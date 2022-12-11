import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      borderRadius: BorderRadius.circular(35.0),
      child: Container(
        width: 35.0,
        height: 35.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kDarkPurple,
        ),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }
}
