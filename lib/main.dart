import 'package:flutter/material.dart';
import 'package:login_sign_out_ui/pages/welcome_page.dart';
import 'package:login_sign_out_ui/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login & Sign up UI',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kDarkPurple),
          bodyText2: TextStyle(color: kDarkPurple),
        ),
      ),
      home: const WelcomePage(),
    );
  }
}
