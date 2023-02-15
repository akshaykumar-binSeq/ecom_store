import 'package:another_flushbar/flushbar_helper.dart';
import 'package:ecom_store/application/auth_bloc/auth_bloc.dart';
import 'package:ecom_store/application/auth_bloc/log_in_bloc/sign_in_bloc.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/infrastructure/auth/firebase_auth_facade.dart';
import 'package:ecom_store/presentation/screen/auth/sign_in_with_phone_screen.dart';
import 'package:ecom_store/presentation/screen/home/home_screen.dart';
import 'package:ecom_store/presentation/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SignInSignUpScreen extends StatelessWidget {
  const SignInSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignInBloc(FirebaseAuthFacade()),
        ),
        BlocProvider(
          create: (context) => AuthBloc(authFacade: FirebaseAuthFacade()),
        ),
      ],
      child: Scaffold(
        body: BlocConsumer<SignInBloc, SignInState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) {
                either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      message: failure.maybeMap(
                        cancelledByUser: (_) => 'Cancelled',
                        serverError: (_) => 'Server error',
                        orElse: () => '',
                      ),
                    ).show(context);
                  },
                  (_) {
                    Get.offAll(() => const HomeScreen());
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.authCheckRequested());
                  },
                );
              },
            );
          },
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/image/e-com_store_logo.png',
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 40),
                Text(
                  'ECOM STORE',
                  style: boldHeading,
                ),
                const Spacer(),
                Text(
                  'Register or Sign In with',
                  style: smallText,
                ),
                if (state.isSubmitting) const CustomLoader(),
                SizedBox(
                  width: screenWidth,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 35,
                      right: 35,
                      top: 10,
                      bottom: 10,
                    ),
                    child: ElevatedButton(
                      onPressed: () => context
                          .read<SignInBloc>()
                          .add(const SignInEvent.signInWithGooglePressed()),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.asset(
                              'assets/image/icons/google_logo.png',
                              height: 28,
                              width: 28,
                            ),
                          ),
                          const Text(
                            'Google',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(width: 28)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 35,
                      right: 35,
                      top: 10,
                      bottom: 10,
                    ),
                    child: ElevatedButton(
                      onPressed: () =>
                          Get.to(() => const SignInWithPhoneScreen()),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text(
                            'Phone',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            );
          },
        ),
      ),
    );
  }
}
