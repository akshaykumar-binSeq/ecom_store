import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/presentation/screen/main_screen.dart';
import 'package:flutter/material.dart';
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
      getToHome();
      // setState(() {});
      // if (UserDetailsLocal.apiToken.isEmpty) await SharedPrefs.init();
      // await SharedPrefs.init();
    });

    super.initState();
  }

  getToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => MainScreen());
  }

  @override
  Widget build(BuildContext context) {
    return _SplashScreen();
  }
}

class _SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
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
    );
  }

  Future<String> _getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
