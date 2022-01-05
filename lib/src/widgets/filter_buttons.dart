import 'package:demo_project/src/utiils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FilterButton extends StatefulWidget {
  const FilterButton(
      {Key? key, this.title, this.onTap, this.icon, this.card = false})
      : super(key: key);
  final String? title;
  final String? icon;
  final Function? onTap;
  final bool? card;

  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  bool select = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.card == false
            ? () {
                setState(() {
                  select = !select;
                });
              }
            : () {
                setState(() {});
              },
        child: Container(
          // height: 4.h,
          decoration: BoxDecoration(
              color: Gradients.colors[4],
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  color: select == true
                      ? Gradients.colors[3]
                      : Gradients.colors[2]),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1),
                    color: select == true
                        ? Gradients.colors[1]
                        : Gradients.colors[2].withOpacity(0.4),
                    blurRadius: 1,
                    spreadRadius: 1)
              ],),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(widget.icon!),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  Text(widget.title!,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ],
              ),
            ),
          ),
        ));
  }
}
