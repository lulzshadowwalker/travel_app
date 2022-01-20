import 'package:flutter/material.dart';
import 'package:flutter_cubit/constants/constants.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/shared/button.dart';
import 'package:flutter_cubit/shared/large_text.dart';
import 'package:flutter_cubit/shared/normal_text.dart';
import 'package:flutter_cubit/shared/responsive_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int rating = 4;
  int selectedButton = -1;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // personally I wouldn't have used a stack if it was only for the app appbar
        body: SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Stack(
              children: [
                // background top image
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('img/discover-five.jpg'),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high)),
                ),
                // top bar
                Positioned(
                    left: 20,
                    right: 20,
                    top: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    )),

                Positioned(
                    top: 350,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  LargeText(
                                      text: 'asswuchs',
                                      color: Colors.black.withOpacity(0.8)),
                                  LargeText(
                                      text: '007', color: AppColors.mainColor),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.location_on_outlined,
                                      color: AppColors.mainColor),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  NormalText(text: 'Russia', fontSize: 12)
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Wrap(
                                    children: List.generate(
                                        5,
                                        (index) => Icon(
                                              index + 1 <= rating
                                                  ? Icons.star
                                                  : Icons.star_border,
                                              color: AppColors.starColor,
                                            )),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  NormalText(text: '( 4.0 )', fontSize: 12)
                                ],
                              ),
                              const SizedBox(height: 20),
                              LargeText(
                                  text: 'sanity level',
                                  fontSize: 26,
                                  color: AppColors.textColor2),
                              const SizedBox(
                                height: 5,
                              ),
                              Wrap(
                                  spacing: 12,
                                  runSpacing: 12,
                                  children: List.generate(6, (index) {
                                    // * should've returned one button and check for selectedButton for every argument but this also works jsut fine
                                    // * nm this is way better imo
                                    return selectedButton == index
                                        ? Button(
                                            onTap: () {},
                                            backgroundColor:
                                                AppColors.mainColor,
                                            foregroundColor: Colors.white,
                                            label: '${index + 1}',
                                          )
                                        : Button(
                                            onTap: () {
                                              setState(
                                                  () => selectedButton = index);
                                            },
                                            label: '${index + 1}',
                                            foregroundColor: Colors.black,
                                          );
                                  })),
                              const SizedBox(
                                height: 10,
                              ),
                              LargeText(
                                  text: 'description',
                                  fontSize: 26,
                                  color: AppColors.textColor2),
                              NormalText(text: loremIpsum, fontSize: 16),
                              const SizedBox(height: 5),
                              Positioned(
                                  bottom: 0,
                                  child: Row(
                                    children: [
                                      Button(
                                        onTap: () {
                                          setState(
                                              () => isFavorite = !isFavorite);
                                        },
                                        backgroundColor: Colors.transparent,

                                        // * honestly its easier to just pass entire objects depending on the state
                                        icon: Icon(
                                            isFavorite
                                                ? Icons.favorite_rounded
                                                : Icons.favorite_border,
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.black),
                                        foregroundColor: isFavorite
                                            ? Colors.red
                                            : Colors.black,
                                        borderColor: isFavorite
                                            ? Colors.red
                                            : Colors.black,
                                      ),
                                      const SizedBox(width: 10),
                                      ResponsiveButton(
                                          isResponsive: true,
                                          text: 'Get a ticket',
                                          margin: const EdgeInsets.only())
                                    ],
                                  ))
                            ],
                          ),
                        )))
              ],
            )));
  }
}
