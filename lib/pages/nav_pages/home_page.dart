import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/models/explore.dart';
import 'package:flutter_cubit/shared/circle_tab_indicator.dart';
import 'package:flutter_cubit/shared/large_text.dart';
import 'package:flutter_cubit/shared/normal_text.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final List<String> _discoverImage = [
    'img/discover-two.jpg',
    'img/discover-five.jpg',
    'img/discover-one.jpg',
    'img/discover-three.gif',
    'img/discover-four.jpg',
    'img/discover-six.jpg',
    'img/discover-seven.jpg',
    'img/discover-8.jpg',
    'img/discover-9.jpg',
    'img/discover-10.jpg',
    'img/discover-11.jpg',
    'img/discover-12.jpg',
    'img/discover-13.jpg',
    'img/discover-14.jpg',
    'img/discover-15.jpg',
  ];

  // I should've used controllers here but whatever
  final List<ExploreItem> _exploreItem = [
    ExploreItem(
        color: Colors.blue.shade300,
        icon: const Icon(Icons.ac_unit),
        label: 'snow'),
    ExploreItem(
        color: Colors.yellow.shade300,
        icon: const Icon(Icons.travel_explore),
        label: 'travel'),
    ExploreItem(
        color: Colors.orange.shade300,
        icon: const Icon(Icons.book),
        label: 'learn'),
    ExploreItem(
        color: Colors.brown.shade300,
        icon: const Icon(Icons.coffee_maker),
        label: 'coffee'),
    ExploreItem(
        color: Colors.green.shade300,
        icon: const Icon(Icons.run_circle),
        label: 'training'),
    ExploreItem(
        color: Colors.green.shade100,
        icon: const Icon(Icons.attach_money),
        label: 'buisness')
  ];
  @override
  Widget build(BuildContext context) {
    // can make this dynamic length
    TabController _tabController = TabController(length: 3, vsync: this);

    return SafeArea(
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // an appbar might have been better here
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 35,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('img/welcome-four.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              LargeText(text: 'Discover'),
              const SizedBox(
                height: 30,
              ),
              // * tabbar
              Align(
                  // note that in a tabbar some settings need to work together and wont function properly alone
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    labelColor: AppColors.mainColor,
                    unselectedLabelColor: Colors.black38,
                    labelStyle: GoogleFonts.tajawal(
                        fontSize: 16,
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: CircleTabIndicator(
                        color: AppColors.mainColor, radius: 3),

                    // label padding needs isScrolabble so does Align
                    labelPadding: const EdgeInsets.only(right: 35),
                    isScrollable: true,
                    controller: _tabController,
                    tabs: const [
                      Tab(text: 'Places'),
                      Tab(text: 'Inspiration'),
                      Tab(text: 'Emotions'),
                    ],
                  )),
              // * tabbar view
              SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _discoverImage.length,
                          itemBuilder: (context, index) => Container(
                                margin:
                                    const EdgeInsets.only(right: 20, top: 20),
                                height: 300,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                        filterQuality: FilterQuality.high,
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage(_discoverImage[index]))),
                              )),
                      Center(child: NormalText(text: 'inspiration')),
                      Center(child: NormalText(text: 'emotions')),
                    ],
                  )),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LargeText(text: 'Explore more', fontSize: 22),
                  NormalText(
                      text: 'see more',
                      fontSize: 14,
                      color: AppColors.mainColor)
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _exploreItem.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: _exploreItem[index].color,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: _exploreItem[index].icon,
                              ),
                              NormalText(
                                text: _exploreItem[index].label,
                                fontSize: 16,
                              )
                            ],
                          ),
                        );
                      }))
            ],
          )),
    );
  }
}
