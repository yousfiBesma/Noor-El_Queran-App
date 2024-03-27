/*import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';
import 'package:parent/presentation/activity_page/activity_page.dart';
import 'package:parent/presentation/map_page/map_page.dart';
import 'package:parent/theme/theme_helper.dart';
import 'package:parent/widgets/custom_bottom_bar.dart';


class BottombarScreen extends StatelessWidget {
    BottombarScreen({Key? key})
        : super(
           Key: key,
      );


  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: appTheme.blueGray100,
          body: SizedBox(
            height: 121.v,
            width: 409.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: DottedBorder(
                    color: appTheme.deepPurpleA200,
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    radius: Radius.circular(5),
                    borderType: BorderType.RRect,
                    dashPattern: [
                      10,
                      5,
                    ],
                    child: Container(
                      height: 304.v,
                      width: 409.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 28.Vv,
                      right: 24.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Spacer(),
                        CustomBottomBar(
                          onChanged: (BottomBarEnum type) {
                            Navigator. pushNamed(navigatorKey.currentContext!,
                              getCurrentRoute(type));
                          },
                        ),
                      ],
                  ),
                ),
               ),
              ],
            ),
          ),

          
          


  }
  */