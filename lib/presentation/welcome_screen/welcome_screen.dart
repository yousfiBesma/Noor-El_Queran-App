import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 79.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 61.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgInlovewPhotogr,
                          height: 330.adaptSize,
                          width: 330.adaptSize,
                          radius: BorderRadius.circular(165.h)),
                      Spacer(),
                      Text("Find your Mosque",
                          style: theme.textTheme.displayMedium),
                      SizedBox(height: 87.v),
                      SizedBox(
                          height: 56.v,
                          width: 222.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapView(context);
                                    },
                                    child: Container(
                                        height: 55.v,
                                        width: 222.h,
                                        decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.errorContainer
                                                .withOpacity(1),
                                            borderRadius:
                                                BorderRadius.circular(27.h),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: appTheme.black900
                                                      .withOpacity(0.25),
                                                  spreadRadius: 2.h,
                                                  blurRadius: 2.h,
                                                  offset: Offset(0, 4))
                                            ])))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text("Get Started",
                                    style: CustomTextStyles
                                        .displayMediumMarkaziTextPrimary))
                          ]))
                    ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
