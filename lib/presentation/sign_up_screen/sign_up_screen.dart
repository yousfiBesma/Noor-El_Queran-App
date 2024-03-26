import 'package:parent/widgets/custom_text_form_field.dart';
import 'package:parent/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.errorContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "sign up ",
                        style: theme.textTheme.displayLarge,
                      ),
                    ),
                    SizedBox(height: 39.v),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 190.h,
                        child: Text(
                          "Enter your full name and phone number",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 94.v),
                    Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: CustomTextFormField(
                        controller: fullNameController,
                        hintText: "Full name",
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: CustomTextFormField(
                        controller: phoneNumberController,
                        hintText: "Phone number",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.phone,
                      ),
                    ),
                    SizedBox(height: 54.v),
                    CustomElevatedButton(
                      text: "Next",
                      margin: EdgeInsets.only(right: 10.h),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
