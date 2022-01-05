import 'package:demo_project/src/utiils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FilterChips extends StatefulWidget {
  const FilterChips({Key? key, this.title, this.onTap}) : super(key: key);
  final String? title;
  final Function? onTap;

  @override
  _FilterChipsState createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  bool select = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        setState((){
          select = !select;
        });
      },
      child:Container(
        decoration:BoxDecoration(
          color: select == true ? Gradients.colors[3] : Gradients.colors[2],
          borderRadius: BorderRadius.circular(30)
        ),
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: 4.w,),
          child: Center(
            child: Text(
              widget.title!,
              style:TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white
              )
            ),
          ),
        ),
      )
    );
  }
}
