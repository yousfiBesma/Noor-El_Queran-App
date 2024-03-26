import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavActivityErrorcontainer,
      activeIcon: ImageConstant.imgNavActivityErrorcontainer,
      title: "Activity",
      type: BottomBarEnum.Activity,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMapGray500,
      activeIcon: ImageConstant.imgNavMapGray500,
      title: "Map",
      type: BottomBarEnum.Map,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCompte,
      activeIcon: ImageConstant.imgNavCompte,
      title: "Compte",
      type: BottomBarEnum.Compte,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(
          32.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.errorContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  color: appTheme.gray500,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.gray500,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 27.v,
                  width: 25.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        color: theme.colorScheme.errorContainer.withOpacity(1),
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          right: 1.h,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 15.h,
                            bottom: 17.v,
                          ),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder5,
                          ),
                          child: Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.all(3.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                      color: theme.colorScheme.errorContainer.withOpacity(1),
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Activity,
  Map,
  Compte,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
