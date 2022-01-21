import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/cubit.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/shared/normal_text.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton(
      {Key? key,
      this.isResponsive = false,
      this.width,
      this.margin = const EdgeInsets.only(top: 12),
      this.text})
      : super(key: key);

  final EdgeInsetsGeometry margin;
  final bool isResponsive;
  final double? width;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<AppCubit>(context).getData();
      },
      child: Flexible(
        fit: isResponsive ? FlexFit.tight : FlexFit.loose,
        child: Container(
            margin: margin,
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.mainColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NormalText(text: text ?? '', color: Colors.white),
                const SizedBox(
                  width: 5,
                ),
                const Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white)
              ],
            )),
      ),
    );
  }
}
