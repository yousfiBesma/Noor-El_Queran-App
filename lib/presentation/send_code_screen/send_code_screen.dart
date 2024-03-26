import 'package:parent/widgets/app_bar/custom_app_bar.dart';
import 'package:parent/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:parent/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("OTP Verification",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 17.v),
                      Container(
                          width: 324.h,
                          margin: EdgeInsets.only(left: 1.h),
                          child: Text(
                              "We’ve sent an SMS with an activation code to your phone +213 6 94 27 84 11",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodyLargeInterPrimaryContainer
                                  .copyWith(height: 1.25))),
                      SizedBox(height: 95.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, right: 11.h),
                          child: CustomPinCodeTextField(
                              context: context, onChanged: (value) {})),
                      SizedBox(height: 39.v),
                      Container(
                          width: 40.h,
                          margin: EdgeInsets.only(left: 136.h),
                          child: Text("Verify code",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleSmallUrbanist)),
                      SizedBox(height: 67.v),
                      Align(
                          alignment: Alignment.center,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Code expires in:",
                                    style: CustomTextStyles
                                        .titleSmallUrbanistff9b9fd0),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "00:40",
                                    style: CustomTextStyles
                                        .titleSmallUrbanistff939393)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(28.h, 9.v, 326.h, 9.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
