import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

// ignore: must_be_immutable
class ActivityItemWidget extends StatelessWidget {
  const ActivityItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109.v,
      width: 351.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(
          30.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      ),
    );
  }
}
