import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/shared/normal_text.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.onTap,
      this.size = 50,
      this.backgroundColor = AppColors.buttonBackground,
      this.foregroundColor = Colors.white,
      this.label,
      this.icon,
      this.borderColor})
      : super(key: key);

  final double size;
  final Color foregroundColor;
  final Color backgroundColor;
  final Color? borderColor;
  final String? label;
  final Icon? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? backgroundColor, width: 1),
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
        ),
        child: Center(
            child: icon ??
                NormalText(
                  text: label ?? '',
                  fontWeight: FontWeight.bold,
                  color: foregroundColor,
                )),
      ),
    );
  }
}
