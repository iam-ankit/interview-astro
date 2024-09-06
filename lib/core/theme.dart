import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8d4e2b),
      surfaceTint: Color(0xff8d4e2b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbcb),
      onPrimaryContainer: Color(0xff341100),
      secondary: Color(0xff506528),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd2ec9f),
      onSecondaryContainer: Color(0xff131f00),
      tertiary: Color(0xff646032),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffebe4aa),
      onTertiaryContainer: Color(0xff1f1c00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff221a15),
      onSurfaceVariant: Color(0xff52443d),
      outline: Color(0xff85736c),
      outlineVariant: Color(0xffd7c2b9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffb691),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff341100),
      primaryFixedDim: Color(0xffffb691),
      onPrimaryFixedVariant: Color(0xff703716),
      secondaryFixed: Color(0xffd2ec9f),
      onSecondaryFixed: Color(0xff131f00),
      secondaryFixedDim: Color(0xffb6d086),
      onSecondaryFixedVariant: Color(0xff394d12),
      tertiaryFixed: Color(0xffebe4aa),
      onTertiaryFixed: Color(0xff1f1c00),
      tertiaryFixedDim: Color(0xffcfc890),
      onTertiaryFixedVariant: Color(0xff4c481c),
      surfaceDim: Color(0xffe8d7cf),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1eb),
      surfaceContainer: Color(0xfffceae3),
      surfaceContainerHigh: Color(0xfff6e5dd),
      surfaceContainerHighest: Color(0xfff0dfd8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6b3312),
      surfaceTint: Color(0xff8d4e2b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa7633e),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff35490e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff657c3c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff484419),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7b7645),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff221a15),
      onSurfaceVariant: Color(0xff4e4039),
      outline: Color(0xff6c5c54),
      outlineVariant: Color(0xff89776f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffb691),
      primaryFixed: Color(0xffa7633e),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8a4c28),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff657c3c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4d6325),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7b7645),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff625d2f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d7cf),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1eb),
      surfaceContainer: Color(0xfffceae3),
      surfaceContainerHigh: Color(0xfff6e5dd),
      surfaceContainerHighest: Color(0xfff0dfd8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3e1600),
      surfaceTint: Color(0xff8d4e2b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6b3312),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff182600),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff35490e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff262300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff484419),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2d211b),
      outline: Color(0xff4e4039),
      outlineVariant: Color(0xff4e4039),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffe7dd),
      primaryFixed: Color(0xff6b3312),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4f1e00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff35490e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff213200),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff484419),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff312e04),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d7cf),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1eb),
      surfaceContainer: Color(0xfffceae3),
      surfaceContainerHigh: Color(0xfff6e5dd),
      surfaceContainerHighest: Color(0xfff0dfd8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb691),
      surfaceTint: Color(0xffffb691),
      onPrimary: Color(0xff542202),
      primaryContainer: Color(0xff703716),
      onPrimaryContainer: Color(0xffffdbcb),
      secondary: Color(0xffb6d086),
      onSecondary: Color(0xff243600),
      secondaryContainer: Color(0xff394d12),
      onSecondaryContainer: Color(0xffd2ec9f),
      tertiary: Color(0xffcfc890),
      onTertiary: Color(0xff353107),
      tertiaryContainer: Color(0xff4c481c),
      onTertiaryContainer: Color(0xffebe4aa),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a120e),
      onSurface: Color(0xfff0dfd8),
      onSurfaceVariant: Color(0xffd7c2b9),
      outline: Color(0xffa08d84),
      outlineVariant: Color(0xff52443d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inversePrimary: Color(0xff8d4e2b),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff341100),
      primaryFixedDim: Color(0xffffb691),
      onPrimaryFixedVariant: Color(0xff703716),
      secondaryFixed: Color(0xffd2ec9f),
      onSecondaryFixed: Color(0xff131f00),
      secondaryFixedDim: Color(0xffb6d086),
      onSecondaryFixedVariant: Color(0xff394d12),
      tertiaryFixed: Color(0xffebe4aa),
      onTertiaryFixed: Color(0xff1f1c00),
      tertiaryFixedDim: Color(0xffcfc890),
      onTertiaryFixedVariant: Color(0xff4c481c),
      surfaceDim: Color(0xff1a120e),
      surfaceBright: Color(0xff413732),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff221a15),
      surfaceContainer: Color(0xff271e19),
      surfaceContainerHigh: Color(0xff322823),
      surfaceContainerHighest: Color(0xff3d332e),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbc9a),
      surfaceTint: Color(0xffffb691),
      onPrimary: Color(0xff2b0d00),
      primaryContainer: Color(0xffc97f57),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbad48a),
      onSecondary: Color(0xff0f1900),
      secondaryContainer: Color(0xff819955),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd3cc94),
      onTertiary: Color(0xff191700),
      tertiaryContainer: Color(0xff98925f),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a120e),
      onSurface: Color(0xfffffaf8),
      onSurfaceVariant: Color(0xffdcc6bd),
      outline: Color(0xffb29f96),
      outlineVariant: Color(0xff917f77),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inversePrimary: Color(0xff713817),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff230900),
      primaryFixedDim: Color(0xffffb691),
      onPrimaryFixedVariant: Color(0xff5b2706),
      secondaryFixed: Color(0xffd2ec9f),
      onSecondaryFixed: Color(0xff0b1400),
      secondaryFixedDim: Color(0xffb6d086),
      onSecondaryFixedVariant: Color(0xff293c02),
      tertiaryFixed: Color(0xffebe4aa),
      onTertiaryFixed: Color(0xff141200),
      tertiaryFixedDim: Color(0xffcfc890),
      onTertiaryFixedVariant: Color(0xff3b370d),
      surfaceDim: Color(0xff1a120e),
      surfaceBright: Color(0xff413732),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff221a15),
      surfaceContainer: Color(0xff271e19),
      surfaceContainerHigh: Color(0xff322823),
      surfaceContainerHighest: Color(0xff3d332e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffffaf8),
      surfaceTint: Color(0xffffb691),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbc9a),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff5ffdb),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbad48a),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf1),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd3cc94),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a120e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffffaf8),
      outline: Color(0xffdcc6bd),
      outlineVariant: Color(0xffdcc6bd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inversePrimary: Color(0xff4b1c00),
      primaryFixed: Color(0xffffe1d3),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbc9a),
      onPrimaryFixedVariant: Color(0xff2b0d00),
      secondaryFixed: Color(0xffd6f1a3),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbad48a),
      onSecondaryFixedVariant: Color(0xff0f1900),
      tertiaryFixed: Color(0xfff0e9ae),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd3cc94),
      onTertiaryFixedVariant: Color(0xff191700),
      surfaceDim: Color(0xff1a120e),
      surfaceBright: Color(0xff413732),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff221a15),
      surfaceContainer: Color(0xff271e19),
      surfaceContainerHigh: Color(0xff322823),
      surfaceContainerHighest: Color(0xff3d332e),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme =
      GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme =
      GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}
