import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_circle.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            right: 90.0,
            top: -20.0,
            child: CustomCircle(),
          ),
          const Positioned(
            left: 90.0,
            bottom: 200.0,
            child: CustomCircle(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Let's Get Started",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  "Grow Together",
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 40.0),
                Center(
                  child: CustomButton(
                    width: size.width * 0.7,
                    text: 'JOIN NOW',
                  ),
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
