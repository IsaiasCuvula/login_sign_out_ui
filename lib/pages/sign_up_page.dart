import 'package:flutter/material.dart';

import '../widgets/custom_back_button.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_circle.dart';
import '../widgets/text_field_title.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 90.0,
            top: 100.0,
            child: CustomCircle(color: Colors.pinkAccent.shade100),
          ),
          Positioned(
            left: 90.0,
            bottom: 100.0,
            child: CustomCircle(color: Colors.pinkAccent.shade100),
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
                  "Create Account :)",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 100.0),
                const TextFieldTitle(text: 'Enter Your Email'),
                const TextField(),
                const SizedBox(height: 30.0),
                const TextFieldTitle(text: 'Create Username'),
                const TextField(),
                const SizedBox(height: 30.0),
                const TextFieldTitle(text: 'Create Password'),
                const TextField(),
                const SizedBox(height: 100.0),
                Center(
                  child: CustomButton(width: size.width * 0.6, text: 'SIGN UP'),
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
