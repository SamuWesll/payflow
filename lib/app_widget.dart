import 'package:flutter/material.dart';
import 'package:payflow/moduiles/login/login_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: LoginPage(),
    );
  }
}