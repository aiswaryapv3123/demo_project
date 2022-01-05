import 'package:demo_project/src/utiils/colors.dart';
import 'package:demo_project/src/widgets/card_title.dart';
import 'package:demo_project/src/widgets/filter_buttons.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GameCard extends StatefulWidget {
  const GameCard(
      {Key? key,
      this.title,
      this.onTapLike,
      this.onTap,
      this.downloads,
      this.off,
      this.image,
      this.date})
      : super(key: key);
  final String? title;
  final String? image;
  final String? date;
  final Function? onTap;
  final Function? onTapLike;
  final List<String>? downloads;
  final bool? off;

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      // height: 40.h,
      decoration: BoxDecoration(
          // color:Color(0xFF2B2D47),
        // color:Colors.red,
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 1),
                color: Gradients.colors[2].withOpacity(0.4),
                blurRadius: 4,
                spreadRadius: 2)
          ],
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            width: 100.w,
            // height: 20.h,
            child:Image.asset(widget.image!,fit: BoxFit.fill,)),
          Container(
            width: 100.w,
            // height:25.h,
            padding: EdgeInsets.symmetric(horizontal: 2.w, ),
            decoration: BoxDecoration(
                color: Gradients.colors[3],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )),
            child: Column(
              children: [
                SizedBox(height: 1.h,),
                CardTitle(
                  title: widget.title,
                  onTapFavorite: widget.onTapLike,
                ),
                SizedBox(height: 1.h,),
                // Spacer(),
                Container(
                  height: 4.h,
                  child: Row(
                    children: [
                      FilterButton(
                        title: widget.date,
                        icon: "assets/icons/calendar.png",
                        onTap: () {},
                        card: true,
                      ),
                      SizedBox(width: 1.w,),
                      FilterButton(
                        title: "Action",
                        icon: "assets/icons/type_action.png",
                        onTap: () {},
                        card: true,
                      ),
                      SizedBox(width: 1.w,),
                      FilterButton(
                        title: "Adventure",
                        icon: "assets/icons/type_adventure.png",
                        onTap: () {},
                        card: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
                // Spacer(),
                widget.off == true
                    ? Align(
                  alignment: Alignment.centerLeft,
                      child: Container(
                  width:35.w,
                        height: 4.h,
                        child: FilterButton(
                            title: widget.date,
                            icon: "assets/icons/offer.png",
                            onTap: () {},
                            card: true,
                          ),
                      ),
                    )
                    : Container(),
                SizedBox(height: 1.h,),
                // Spacer(),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children:[
                      Text("Download",
                        style:TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize:12,
                          color:Color(0xFF696C75),
                        ),),
                      SizedBox(
                        width:2.w,
                      ),
                      Container(
                        width: 60.w,
                        height: 6.h,
                        child: ListView.builder(
                          itemCount: widget.downloads!.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              // width: 60.w,
                              // margin: EdgeInsets.symmetric(horizontal: 1.w),
                              child: Image.asset(widget.downloads![index],height: 8.w,width: 8.w,)
                            );
                          },
                        ),
                      )
                    ]
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
