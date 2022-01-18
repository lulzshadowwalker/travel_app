import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalText extends StatefulWidget {
  NormalText(
      {Key? key,
      required this.text,
      this.fontSize = 18.0,
      this.color = Colors.black38,
      this.fontWeight = FontWeight.normal,
      this.maxLines = 4})
      : super(key: key);

  double fontSize;
  FontWeight fontWeight;
  Color color;
  int maxLines;

  final String text;

  @override
  State<NormalText> createState() => _NormalTextState();
}

class _NormalTextState extends State<NormalText> {
  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
        duration: const Duration(seconds: 3),
        style: GoogleFonts.cairo(
            letterSpacing: -1,
            fontSize: widget.fontSize,
            color: widget.color,
            fontWeight: widget.fontWeight),
        maxLines: widget.maxLines,
        overflow: TextOverflow.fade,
        child: Text(
          widget.text,
        ));
  }
}
