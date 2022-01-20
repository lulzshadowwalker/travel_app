import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/shared/large_text.dart';
import 'package:flutter_cubit/shared/normal_text.dart';
import 'package:flutter_cubit/constants/constants.dart';
import 'package:flutter_cubit/shared/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List<String> _imagePath = [
    'img/welcome-one.png',
    'img/welcome-two.png',
    'img/welcome-three.png',
    'img/welcome-four.jpg',
    'img/welcome-five.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _imagePath.length,
        itemBuilder: (context, pageIndex) => Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    _imagePath[pageIndex],
                  ),
                  fit: BoxFit.cover)),
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LargeText(
                        text: 'lUwUlzZz',
                      ),
                      // LargeText(
                      //     text: 'Holiday',
                      //     fontWeight: FontWeight.normal,
                      //     color: Colors.white),
                      Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          width: 250,
                          child: NormalText(
                            text: loremIpsum,
                          )),
                      const ResponsiveButton(
                        isResponsive: false,
                      )
                    ],
                  ),
                  Column(
                    children: List.generate(
                        _imagePath.length,
                        (sliderIndex) => Container(
                            margin: const EdgeInsets.only(top: 8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: sliderIndex == pageIndex
                                      ? Colors.transparent
                                      : Colors.white),
                              borderRadius: BorderRadius.circular(50),
                              color: (sliderIndex == pageIndex)
                                  ? AppColors.mainColor
                                  : AppColors.mainColor.withOpacity(0.3),
                            ),
                            width: 8,
                            height: (sliderIndex == pageIndex) ? 25 : 8)),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
