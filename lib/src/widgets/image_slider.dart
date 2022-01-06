import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_project/src/utiils/colors.dart';
import 'package:demo_project/src/widgets/card_title.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomImageSlider extends StatefulWidget {
  const CustomImageSlider({Key? key, this.images, this.title})
      : super(key: key);
  final List<String>? images;
  final String? title;

  @override
  _CustomImageSliderState createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider> {
  bool select = false;
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 20.h,
      decoration: BoxDecoration(
          // color:Color(0xFF2B2D47),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
              viewportFraction: 1,
            ),
            items: widget.images!
                .map(
                  (item) => Container(
                    width: 100.w,
                    height: 30.h,
                    // margin:EdgeInsets.symmetric(horizontal:5.w),
                    // padding:EdgeInsets.symmetric(horizontal:2.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // image: DecorationImage(
                      //     fit: BoxFit.fill, image: AssetImage(item),),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(item, fit: BoxFit.cover, width: 100.w)),
                  ),
                )
                .toList(),
          ),
          Center(
              child: Row(children: [
            GestureDetector(
                onTap: () {
                  carouselController.previousPage();
                },
                child: Icon(Icons.arrow_back_ios_rounded, color: Colors.white)),
            Spacer(),
            GestureDetector(
                onTap: () {
                  carouselController.nextPage();
                },
                child:
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.white)),
          ])),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: 100.w,
                height: 5.h,
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                decoration: BoxDecoration(
                    color: Color(0xFF2B2D47),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    )),
                child: CardTitle(
                  title: widget.title,
                  onTapFavorite: () {},
                )),
          ),
        ],
      ),
    );
  }
}
