import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  ResponsiveButton(
      {Key? key,
      this.isResponsive,
      this.width,
      this.margin = const EdgeInsets.only(top: 12)})
      : super(key: key);

  EdgeInsetsGeometry margin;
  bool? isResponsive;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        height: 60,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.mainColor,
        ),
        child: Image.asset(
          'img/button-one.png',
        ));
  }
}
