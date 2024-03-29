import 'package:flutter/material.dart';
import 'package:parent/core/utils/size_utils.dart';
import 'package:parent/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeInterPrimaryContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  // Display text style
  static get displayMediumMarkaziTextPrimary =>
      theme.textTheme.displayMedium!.markaziText.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineSmallInterPrimary =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeOnErrorContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get headlineLargePoppinsGray800 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.gray600,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.42),
      );
  static get headlineSmallBlack90025 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 25.fSize,
      );
  // Title text style
  static get titleSmallUrbanist =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallUrbanistBlack900 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallUrbanistff000000 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: Color(0XFF000000),
      );
  static get titleSmallUrbanistff939393 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: Color(0XFF939393),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallUrbanistff9b9fd0 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: Color(0XFF9B9FD0),
      );

  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.42),
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeUrbanistGray900 =>
      theme.textTheme.titleLarge!.urbanist.copyWith(
        color: appTheme.gray600,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w200,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterMedium =>
      theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsBlack900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallff000000 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff939393 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF939393),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallff9747ff => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF9747FF),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallff9b9fd0=> theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF9B9FD0),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get neuton {
    return copyWith(
      fontFamily: 'Neuton',
    );
  }

  TextStyle get markaziText {
    return copyWith(
      fontFamily: 'Markazi Text',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get prompt {
    return copyWith(
      fontFamily: 'Prompt',
    );
  }
}
