import 'package:flutter/material.dart';
import 'package:flutter_cubit/shared/normal_text.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: NormalText(text: 'Search page'));
  }
}
