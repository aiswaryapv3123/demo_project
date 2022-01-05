import 'package:demo_project/src/utiils/colors.dart';
import 'package:demo_project/src/widgets/app_bar.dart';
import 'package:demo_project/src/widgets/filter_buttons.dart';
import 'package:demo_project/src/widgets/filter_chips.dart';
import 'package:demo_project/src/widgets/game_card.dart';
import 'package:demo_project/src/widgets/image_slider.dart';
import 'package:demo_project/src/widgets/profile_icon.dart';
import 'package:demo_project/src/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<String> sliderImages = [
    "assets/images/card_image_1.png",
    "assets/images/card_image_2.png"
  ];
  List<String> title = ["FarCry 6", "Riders Republic"];
  List<String> filters = [
    "All",
    "PlayStation",
    "Nintendo",
    "X-Box",
    "PC",
    "Steam",
    "Studio"
  ];
  List<String> filterTypes = [
    "All",
    "Action",
    "Adventure",
    "Puzzle",
    "Action",
    "Adventure",
    "Puzzle"
  ];
  List<String> filterIcons = [
    "assets/icons/type_all.png",
    "assets/icons/type_action.png",
    "assets/icons/type_all.png",
    "assets/icons/type_puzzle.png",
    "assets/icons/type_action.png",
    "assets/icons/type_all.png",
    "assets/icons/type_puzzle.png",
  ];

  List<String> dates = ["12 Feb 2021", "19 Feb 2021"];
  List<bool> off = [true, false];
  List<String> downloads = [
    "assets/icons/img1.png",
    "assets/icons/img2.png",
    "assets/icons/img3.png",
    "assets/icons/img4.png",
    "assets/icons/img5.png",
    "assets/icons/img6.png",
    "assets/icons/img7.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: 100.w,
        height: 7.h,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Gradients.colors[2].withOpacity(0.2),
              width: 1,
          ),
        ),),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 0;
                });
              },
              child: Container(
                  width: 20.w,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 2,
                          color: index == 0
                              ? Gradients.colors[2]
                              : Colors.transparent),
                    ),
                  ),
                  child: Image.asset("assets/icons/home_icon.png")),
            ),
            SizedBox(width:3.w),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
              child: Container(
                  width: 20.w,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 2,
                          color: index == 1
                              ? Gradients.colors[2]
                              : Colors.transparent),
                    ),
                  ),
                  child: Image.asset("assets/icons/calendar_grey.png")),
            ),
            SizedBox(width:3.w),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
              child: Container(
                  width: 20.w,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 2,
                          color: index == 2
                              ? Gradients.colors[2]
                              : Colors.transparent),
                    ),
                  ),
                  child: Image.asset("assets/icons/heart_grey.png")),
            ),
          ],
        ),
      ),
      appBar: AppBar(elevation: 1, leading: Container(), actions: [
        CustomAppBar(
          leftIcon: ProfileIcon(radius: 10),
          title: "John",
          rightIcon: Container(
            width: 20.w,
            height: 9.h,
            // color:Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                    child: Image.asset("assets/icons/search_icon.png",
                        width: 8.w, height: 8.w)),
                SizedBox(width: 3.w),
                GestureDetector(
                    child: Image.asset("assets/icons/notifications.png",
                        width: 8.w, height: 8.w)),
              ],
            ),
          ),
        )
      ]),
      body: SingleChildScrollView(
        child: Container(
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.only(left: 4.w, top: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(
                  title: "Popular",
                ),
                Container(
                  width: 100.w,
                  height: 20.h,
                  child: ListView.builder(
                    itemCount: title.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 60.w,
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        child: CustomImageSlider(
                          images: sliderImages,
                          title: title[index],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 2.h),
                Divider(
                  color: Gradients.colors[2].withOpacity(0.2),
                  thickness: 1,
                ),
                SizedBox(height: 2.h),
                Container(
                  width: 100.w,
                  height: 4.h,
                  child: ListView.builder(
                    itemCount: filters.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // width: 60.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        child: FilterChips(
                          title: filters[index],
                          onTap: () {},
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: 100.w,
                  height: 5.h,
                  child: ListView.builder(
                    itemCount: filterTypes.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // width: 60.w,
                        height: 4.h,
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        child: FilterButton(
                          title: filterTypes[index],
                          icon: filterIcons[index],
                          onTap: () {},
                        ),
                      );
                    },
                  ),
                ),
                TitleText(
                  title: "Today",
                ),
                // SizedBox(height: 2.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                  ),
                  child: ListView.builder(
                    itemCount: title.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: [
                            GameCard(
                              title: title[index],
                              image: sliderImages[index],
                              date: dates[index],
                              off: off[index],
                              downloads: downloads,
                              onTapLike: () {},
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 3.h,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                TitleText(
                  title: "This Week",
                ),
                // SizedBox(height: 1.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                  ),
                  child: ListView.builder(
                    itemCount: title.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: [
                            GameCard(
                              title: title[index],
                              image: sliderImages[index],
                              date: dates[index],
                              off: off[index],
                              downloads: downloads,
                              onTapLike: () {},
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 3.h,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
