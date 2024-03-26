import 'package:parent/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 37.v,
          width: 39.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
          ),
        ),
      ),
    );
  }
}
