import 'dart:ui';

Color kDarkPurple = const Color(0xFF7209B7);
Color kLightPurple = const Color(0xFFCDB4DB);
Color kBlue = const Color(0xFF8093F1);
Color kPink = const Color(0xFFFF0054);

TextStyle kCustomStyle(double size,
    {FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(fontSize: size, color: kDarkPurple, fontWeight: fontWeight);
}
