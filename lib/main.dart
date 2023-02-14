import 'package:connection_notifier/connection_notifier.dart';
import 'package:ecom_store/presentation/screen/home/home_screen.dart';
import 'package:ecom_store/presentation/screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const EComStore());
  });
}

class EComStore extends StatelessWidget {
  const EComStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ConnectionNotifier(
      disconnectedText: 'Network disconnected, reconnecting...',
      child: FirebasePhoneAuthProvider(
        child: GetMaterialApp(
          title: 'E-Com Store',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true).copyWith(
            primaryColor: Colors.blue,
            appBarTheme: AppBarTheme.of(context).copyWith(
              elevation: 0,
              // color: Colors.white,
              backgroundColor: Colors.white,
              titleTextStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
              actionsIconTheme:
                  const IconThemeData(color: Colors.black54, size: 34),
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textSelectionTheme: const TextSelectionThemeData(cursorColor: null),
          ),
          routes: {
            '/': (BuildContext context) => const SplashScreen(),
            '/main': (BuildContext context) => const HomeScreen(),
          },
          initialRoute: '/',

          // onGenerateRoute: Router.onGenerateRoute,
          // initialRoute: Router.splashPage,
          // navigatorKey: Router.navigator.key,
        ),
      ),
    );
  }
}
