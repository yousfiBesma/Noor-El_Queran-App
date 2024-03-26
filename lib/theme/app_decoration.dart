import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder165 => BorderRadius.circular(
        165.h,
      );
  static BorderRadius get circleBorder5 => BorderRadius.circular(
        5.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL35 => BorderRadius.vertical(
        bottom: Radius.circular(35.h),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
