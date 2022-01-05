import 'package:demo_project/src/utiils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TitleText extends StatefulWidget {
  const TitleText({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _TitleTextState createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
      child:Text(
        widget.title!,
        style:TextStyle(
          fontWeight: FontWeight.w700,
          fontSize:22,
          color:Gradients.colors[2],
        ),
      )
    );
  }
}
