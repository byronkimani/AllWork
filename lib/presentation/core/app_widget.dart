import 'package:allwork/presentation/core/theme.dart';
import 'package:allwork/presentation/sign_in/welcome_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AllWork',
      debugShowCheckedModeBanner: false,
      theme: apptheme,
      home: SignInPage(),
    );
  }
}
