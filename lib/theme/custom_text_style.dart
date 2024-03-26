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
