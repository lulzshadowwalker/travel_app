import 'package:flutter/material.dart';
import 'package:flutter_cubit/shared/normal_text.dart';

class BarItemPage extends StatelessWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: NormalText(text: 'Bar-item Page'));
  }
}
