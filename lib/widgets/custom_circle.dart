import 'package:flutter/material.dart';
import 'package:login_sign_out_ui/utils/constants.dart';

class CustomCircle extends StatelessWidget {
  const CustomCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 400.0,
      decoration: BoxDecoration(
        color: kLightPurple,
        shape: BoxShape.circle,
      ),
    );
  }
}
