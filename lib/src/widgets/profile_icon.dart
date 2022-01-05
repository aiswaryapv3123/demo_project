import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_project/src/utiils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileIcon extends StatefulWidget {
  const ProfileIcon({Key? key, this.radius, this.profileImage})
      : super(key: key);
  final String? profileImage;
  final double? radius;

  @override
  _ProfileIconState createState() => _ProfileIconState();
}

class _ProfileIconState extends State<ProfileIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.profileImage == null ? Container(
        width: widget.radius?.w,
        height: widget.radius?.w,
        decoration: BoxDecoration(
          color: Gradients.colors[2],
          shape: BoxShape.circle,
          border: Border.all(color: Gradients.colors[2], width: 1.5),
          image: DecorationImage(
            image: AssetImage("assets/images/profile_image.png"),
            fit: BoxFit.fill,
          ),
        ),
      ) :
      CachedNetworkImage(
        imageUrl: widget.profileImage ?? '',
        fit: BoxFit.fill,
        imageBuilder: (context, imageProvider) {
          return Container(
            width: widget.radius?.w,
            height: widget.radius?.w,
            decoration: BoxDecoration(
              color: Gradients.colors[2],
              shape: BoxShape.circle,
              border: Border.all(color: Gradients.colors[2], width: 1.5),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.fill,

              ),
            ),
          );
        },
        errorWidget:(context, url, error) {
          return Container(
            child:Center(
              child:CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Gradients.colors[1]),
              )
            )
          );
        }
      ),
    );
  }
}
