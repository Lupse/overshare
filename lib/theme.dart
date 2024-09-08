import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff101417),
      surfaceTint: Color(0xff5b5f63),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2f3337),
      onPrimaryContainer: Color(0xffbec1c6),
      secondary: Color(0xff5d5e60),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe4e3e5),
      onSecondaryContainer: Color(0xff47494a),
      tertiary: Color(0xff161217),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff363136),
      onTertiaryContainer: Color(0xffc8bfc5),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff1c1b1c),
      onSurfaceVariant: Color(0xff44474a),
      outline: Color(0xff75777b),
      outlineVariant: Color(0xffc5c6ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffc3c7cc),
      primaryFixed: Color(0xffe0e3e8),
      onPrimaryFixed: Color(0xff181c20),
      primaryFixedDim: Color(0xffc3c7cc),
      onPrimaryFixedVariant: Color(0xff43474c),
      secondaryFixed: Color(0xffe3e2e4),
      onSecondaryFixed: Color(0xff1a1c1d),
      secondaryFixedDim: Color(0xffc7c6c8),
      onSecondaryFixedVariant: Color(0xff464749),
      tertiaryFixed: Color(0xffeae0e6),
      onTertiaryFixed: Color(0xff1f1a1f),
      tertiaryFixedDim: Color(0xffcdc4ca),
      onTertiaryFixedVariant: Color(0xff4b454a),
      surfaceDim: Color(0xffdcd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f3),
      surfaceContainer: Color(0xfff0eded),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e2),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff101417),
      surfaceTint: Color(0xff5b5f63),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2f3337),
      onPrimaryContainer: Color(0xffedeff5),
      secondary: Color(0xff424345),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff747476),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff161217),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff363136),
      onTertiaryContainer: Color(0xfff7edf4),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff1c1b1c),
      onSurfaceVariant: Color(0xff404346),
      outline: Color(0xff5d5f63),
      outlineVariant: Color(0xff797b7e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffc3c7cc),
      primaryFixed: Color(0xff71757a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff585c61),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff747476),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5b5c5e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7a7278),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff615a60),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f3),
      surfaceContainer: Color(0xfff0eded),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e2),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff101417),
      surfaceTint: Color(0xff5b5f63),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2f3337),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff212224),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff424345),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff161217),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff363136),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff212427),
      outline: Color(0xff404346),
      outlineVariant: Color(0xff404346),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffe9ecf1),
      primaryFixed: Color(0xff3f4348),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff292d31),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff424345),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2b2d2f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff474146),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff302b30),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f3),
      surfaceContainer: Color(0xfff0eded),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e2),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc3c7cc),
      surfaceTint: Color(0xffc3c7cc),
      onPrimary: Color(0xff2d3135),
      primaryContainer: Color(0xff191d21),
      onPrimaryContainer: Color(0xffa5a8ad),
      secondary: Color(0xffc7c6c8),
      onSecondary: Color(0xff2f3032),
      secondaryContainer: Color(0xff3c3d3f),
      onSecondaryContainer: Color(0xffd1d0d3),
      tertiary: Color(0xffcdc4ca),
      onTertiary: Color(0xff342f34),
      tertiaryContainer: Color(0xff201b20),
      onTertiaryContainer: Color(0xffaea5ab),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131314),
      onSurface: Color(0xffe5e2e2),
      onSurfaceVariant: Color(0xffc5c6ca),
      outline: Color(0xff8f9194),
      outlineVariant: Color(0xff44474a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e2),
      inversePrimary: Color(0xff5b5f63),
      primaryFixed: Color(0xffe0e3e8),
      onPrimaryFixed: Color(0xff181c20),
      primaryFixedDim: Color(0xffc3c7cc),
      onPrimaryFixedVariant: Color(0xff43474c),
      secondaryFixed: Color(0xffe3e2e4),
      onSecondaryFixed: Color(0xff1a1c1d),
      secondaryFixedDim: Color(0xffc7c6c8),
      onSecondaryFixedVariant: Color(0xff464749),
      tertiaryFixed: Color(0xffeae0e6),
      onTertiaryFixed: Color(0xff1f1a1f),
      tertiaryFixedDim: Color(0xffcdc4ca),
      onTertiaryFixedVariant: Color(0xff4b454a),
      surfaceDim: Color(0xff131314),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1c),
      surfaceContainer: Color(0xff201f20),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353535),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc8cbd0),
      surfaceTint: Color(0xffc3c7cc),
      onPrimary: Color(0xff13171b),
      primaryContainer: Color(0xff8d9196),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcbcacc),
      onSecondary: Color(0xff151618),
      secondaryContainer: Color(0xff909092),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd2c8cf),
      onTertiary: Color(0xff19151a),
      tertiaryContainer: Color(0xff968e95),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131314),
      onSurface: Color(0xfffdfafa),
      onSurfaceVariant: Color(0xffc9cbce),
      outline: Color(0xffa1a3a7),
      outlineVariant: Color(0xff818387),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e2),
      inversePrimary: Color(0xff44484d),
      primaryFixed: Color(0xffe0e3e8),
      onPrimaryFixed: Color(0xff0e1215),
      primaryFixedDim: Color(0xffc3c7cc),
      onPrimaryFixedVariant: Color(0xff33373b),
      secondaryFixed: Color(0xffe3e2e4),
      onSecondaryFixed: Color(0xff101113),
      secondaryFixedDim: Color(0xffc7c6c8),
      onSecondaryFixedVariant: Color(0xff353638),
      tertiaryFixed: Color(0xffeae0e6),
      onTertiaryFixed: Color(0xff141014),
      tertiaryFixedDim: Color(0xffcdc4ca),
      onTertiaryFixedVariant: Color(0xff3a343a),
      surfaceDim: Color(0xff131314),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1c),
      surfaceContainer: Color(0xff201f20),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353535),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff9fbff),
      surfaceTint: Color(0xffc3c7cc),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffc8cbd0),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffbfafc),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcbcacc),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd2c8cf),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131314),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffafbfe),
      outline: Color(0xffc9cbce),
      outlineVariant: Color(0xffc9cbce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e2),
      inversePrimary: Color(0xff262a2e),
      primaryFixed: Color(0xffe4e7ec),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffc8cbd0),
      onPrimaryFixedVariant: Color(0xff13171b),
      secondaryFixed: Color(0xffe7e6e8),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffcbcacc),
      onSecondaryFixedVariant: Color(0xff151618),
      tertiaryFixed: Color(0xffeee4eb),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd2c8cf),
      onTertiaryFixedVariant: Color(0xff19151a),
      surfaceDim: Color(0xff131314),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1c),
      surfaceContainer: Color(0xff201f20),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353535),
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
        scaffoldBackgroundColor: colorScheme.surface,
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
