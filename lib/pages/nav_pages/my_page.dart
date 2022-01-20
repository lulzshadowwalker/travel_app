import 'package:flutter/material.dart';
import 'package:flutter_cubit/shared/normal_text.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: NormalText(text: 'My page'));
  }
}
