import 'package:another_flushbar/flushbar_helper.dart';
import 'package:ecom_store/application/auth_bloc/auth_bloc.dart';
import 'package:ecom_store/presentation/screen/auth/sign_in_with_phone_screen.dart';
import 'package:ecom_store/presentation/screen/auth/widgets/pin_input_field.dart';
import 'package:ecom_store/presentation/screen/home/home_screen.dart';
import 'package:ecom_store/presentation/widgets/custom_loader.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class VerifyPhoneNumberWidget extends StatefulWidget {
  static const id = 'VerifyPhoneNumberScreen';

  final String phoneNumber;

  const VerifyPhoneNumberWidget({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  State<VerifyPhoneNumberWidget> createState() =>
      _VerifyPhoneNumberWidgetState();
}

class _VerifyPhoneNumberWidgetState extends State<VerifyPhoneNumberWidget>
    with WidgetsBindingObserver {
  bool isKeyboardVisible = false;

  late final ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    scrollController.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomViewInsets = WidgetsBinding.instance.window.viewInsets.bottom;
    isKeyboardVisible = bottomViewInsets > 0;
  }

  // scroll to bottom of screen, when pin input field is in focus.
  Future<void> _scrollToBottomOnKeyboardOpen() async {
    while (!isKeyboardVisible) {
      await Future.delayed(const Duration(milliseconds: 50));
    }

    await Future.delayed(const Duration(milliseconds: 250));

    await scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FirebasePhoneAuthHandler(
        phoneNumber: widget.phoneNumber,
        signOutOnSuccessfulVerification: false,
        linkWithExistingUser: false,
        autoRetrievalTimeOutDuration: const Duration(seconds: 30),
        otpExpirationDuration: const Duration(seconds: 60),
        onCodeSent: () {},
        onLoginSuccess: (userCredential, autoVerified) async {
          FlushbarHelper.createSuccess(
                  message: 'Phone number verified successfully!')
              .show(context);
          context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());

          Get.offAll(() => const HomeScreen());
        },
        // ignore: void_checks
        onLoginFailed: (authException, stackTrace) {
          switch (authException.code) {
            case 'invalid-phone-number':
              // invalid phone number
              Get.offAll(() => const SignInWithPhoneScreen());
              return FlushbarHelper.createError(
                      message: 'Invalid phone number!')
                  .show(context);
            case 'invalid-verification-code':
              // invalid otp entered
              return FlushbarHelper.createError(
                      message: 'The entered OTP is invalid!')
                  .show(context);

            default:
              Get.offAll(() => const SignInWithPhoneScreen());
              FlushbarHelper.createError(
                      message: 'Something went wrong! Try Again')
                  .show(context);
          }
        },
        onError: (error, stackTrace) {
          FlushbarHelper.createError(message: 'An error occurred!')
              .show(context);
        },
        builder: (context, controller) {
          return Scaffold(
            appBar: AppBar(
              leadingWidth: 0,
              leading: const SizedBox.shrink(),
              title: const Text('Verify Phone Number'),
              actions: [
                if (controller.codeSent)
                  TextButton(
                    onPressed: controller.isOtpExpired
                        ? () async {
                            await controller.sendOTP();
                          }
                        : null,
                    child: Text(
                      controller.isOtpExpired
                          ? 'Resend'
                          : '${controller.otpExpirationTimeLeft.inSeconds}s',
                      style: const TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                const SizedBox(width: 5),
              ],
            ),
            body: controller.isSendingCode
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CustomLoader(),
                      SizedBox(height: 50),
                      Center(
                        child: Text(
                          'Sending OTP',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  )
                : ListView(
                    padding: const EdgeInsets.all(20),
                    controller: scrollController,
                    children: [
                      Text(
                        "We've sent an SMS with a verification code to ${widget.phoneNumber}",
                        style: const TextStyle(fontSize: 25),
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      if (controller.isListeningForOtpAutoRetrieve)
                        Column(
                          children: const [
                            CustomLoader(),
                            SizedBox(height: 50),
                            Text(
                              'Listening for OTP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 15),
                            Divider(),
                            Text('OR', textAlign: TextAlign.center),
                            Divider(),
                          ],
                        ),
                      const SizedBox(height: 15),
                      const Text(
                        'Enter OTP',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      PinInputField(
                        length: 6,
                        onFocusChange: (hasFocus) async {
                          if (hasFocus) await _scrollToBottomOnKeyboardOpen();
                        },
                        onSubmit: (enteredOtp) async {
                          final verified =
                              await controller.verifyOtp(enteredOtp);
                          if (verified) {
                            // number verify success
                            // will call onLoginSuccess handler
                          } else {
                            // phone verification failed
                            // will call onLoginFailed or onError callbacks with the error
                          }
                        },
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}
