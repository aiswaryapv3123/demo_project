import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar(
      {Key? key,
      this.leftIcon,
      this.rightIcon,
      this.onTapLeftIcon,
      this.onTapRightIcon,
      this.title})
      : super(key: key);
  final String? title;
  final Function? onTapLeftIcon;
  final Function? onTapRightIcon;
  final Widget? leftIcon;
  final Widget? rightIcon;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        children: [
          if (widget.leftIcon != null)
            GestureDetector(
              onTap: () {
                widget.onTapLeftIcon!();
              },
              child: Container(child: widget.leftIcon),
            ),
          SizedBox(width: 3.w),
          if (widget.title != null)
            Container(
              child: Text(widget.title!),
            ),
          Spacer(),
          if (widget.leftIcon != null)
            GestureDetector(
              onTap: () {
                widget.onTapRightIcon!();
              },
              child: Container(child: widget.rightIcon),
            ),
          // SizedBox(width: 2.w),
        ],
      ),
    );
  }
}
