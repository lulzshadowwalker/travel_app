import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeText extends StatelessWidget {
  LargeText(
      {Key? key,
      required this.text,
      this.fontWeight = FontWeight.bold,
      this.color = Colors.black,
      this.fontSize = 32})
      : super(key: key);

  double fontSize;
  FontWeight fontWeight;
  Color color;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.cairo(
            fontSize: fontSize, color: color, fontWeight: fontWeight));
  }
}
