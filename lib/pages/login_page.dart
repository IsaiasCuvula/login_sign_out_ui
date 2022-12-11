import 'package:flutter/material.dart';
import 'package:login_sign_out_ui/pages/sign_up_page.dart';

import '../utils/constants.dart';
import '../widgets/custom_back_button.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_circle.dart';
import '../widgets/text_field_title.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 90.0,
            top: 250.0,
            child: CustomCircle(color: kBlue),
          ),
          Positioned(
            left: 90.0,
            bottom: -20.0,
            child: CustomCircle(color: kBlue),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40.0),
                const CustomBackButton(),
                const SizedBox(height: 50.0),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Enter Your Username & Password",
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 100.0),
                const TextFieldTitle(text: 'Username'),
                const TextField(),
                const SizedBox(height: 30.0),
                const TextFieldTitle(text: 'Password'),
                const TextField(),
                const SizedBox(height: 100.0),
                Center(
                  child: CustomButton(
                    width: size.width * 0.6,
                    text: 'LOGIN',
                  ),
                ),
                const SizedBox(height: 30.0),
                const Center(
                  child: Text(
                    "Forgotten Password?",
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const SignUpPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Create New Account",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
