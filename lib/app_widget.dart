import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/moduiles/barcode_scanner/barcode_scanner_page.dart';
import 'package:payflow/moduiles/home/home_page.dart';
import 'package:payflow/moduiles/login/login_page.dart';
import 'package:payflow/moduiles/splash/splash_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
        "/barcode_scanner": (context) => const BarcodeScannerPage(),
      },
    );
  }
}
