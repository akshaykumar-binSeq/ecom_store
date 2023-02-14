import 'package:ecom_store/application/auth_bloc/auth_bloc.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/infrastructure/auth/firebase_auth_facade.dart';
import 'package:ecom_store/presentation/screen/auth/sign_in_sign_up_screen.dart';
import 'package:ecom_store/presentation/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setScreenDimensions(context);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _SplashScreen();
  }
}

class _SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(authFacade: FirebaseAuthFacade())
        ..add(const AuthEvent.authCheckRequested()),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            authenticated: (_) async =>
                await Future.delayed(const Duration(seconds: 1)).then(
              (value) => Get.offAll(() => const HomeScreen()),
            ),
            unauthenticated: (_) async =>
                await Future.delayed(const Duration(seconds: 1)).then(
              (value) => Get.offAll(() => const SignInSignUpScreen()),
            ),
          );
        },
        child: Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: Center(child: Text("E Com Store")),
              ),
              Column(
                children: [
                  const Text(
                    'Powered by',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Binary Sequence',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FutureBuilder<String>(
                      future: _getAppVersion(),
                      builder: (BuildContext context,
                          AsyncSnapshot<String> snapshot) {
                        String version = '';
                        if (snapshot.connectionState == ConnectionState.done &&
                            snapshot.hasData) {
                          version = snapshot.data == null
                              ? ''
                              : 'Version : ${snapshot.data}';
                        }
                        return Text(
                          version,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      }),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
