import 'widgets/activity_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              _buildEighteen(context),
              SizedBox(height: 86.v),
              _buildActivity(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return SizedBox(
      height: 234.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
            height: 16.v,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 23.h,
              top: 39.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle18,
            height: 234.v,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 166.v,
              width: 392.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage161,
                    height: 166.v,
                    radius: BorderRadius.vertical(
                      bottom: Radius.circular(35.h),
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        right: 35.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 78.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup3,
                                  height: 37.v,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 13.h,
                                    top: 2.v,
                                    bottom: 4.v,
                                  ),
                                  child: Text(
                                    "Mohamed Saidani",
                                    style: CustomTextStyles
                                        .headlineSmallInterPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 58.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 41.v,
                                    width: 94.h,
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            "14/02/2024",
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 2.v,
                                              right: 18.h,
                                            ),
                                            child: Text(
                                              "la date",
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPlanner,
                                          width: 19.h,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 1.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 41.v,
                                    width: 76.h,
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            "15:07 PM",
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 3.v,
                                              right: 15.h,
                                            ),
                                            child: Text(
                                              "Time",
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgDeliveryTime,
                                          width: 19.h,
                                          alignment: Alignment.topLeft,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActivity(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 44.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ActivityItemWidget();
        },
      ),
    );
  }
}
