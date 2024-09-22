import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,

      primary: Color(0xff5a1576),
      surfaceTint: Color(0xff8441a0),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff803e9c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff71547a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff8d7ff),
      onSecondaryContainer: Color(0xff583d62),
      tertiary: Color(0xff6e0e3d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9c3560),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff7fb),
      onSurface: Color(0xff1f1a20),
      onSurfaceVariant: Color(0xff4e434f),
      outline: Color(0xff7f7381),
      outlineVariant: Color(0xffd1c2d1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff342e35),
      inversePrimary: Color(0xffebb2ff),
      primaryFixed: Color(0xfff8d8ff),
      onPrimaryFixed: Color(0xff320047),
      primaryFixedDim: Color(0xffebb2ff),
      onPrimaryFixedVariant: Color(0xff6a2786),
      secondaryFixed: Color(0xfff8d8ff),
      onSecondaryFixed: Color(0xff291133),
      secondaryFixedDim: Color(0xffdebbe7),
      onSecondaryFixedVariant: Color(0xff583d61),
      tertiaryFixed: Color(0xffffd9e3),
      onTertiaryFixed: Color(0xff3e001e),
      tertiaryFixedDim: Color(0xffffb0c9),
      onTertiaryFixedVariant: Color(0xff81204b),
      surfaceDim: Color(0xffe2d7e0),
      surfaceBright: Color(0xfffff7fb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcf0f9),
      surfaceContainer: Color(0xfff6ebf4),
      surfaceContainerHigh: Color(0xfff0e5ee),
      surfaceContainerHighest: Color(0xffeadfe8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffebb2ff),
      surfaceTint: Color(0xffebb2ff),
      onPrimary: Color(0xff50076d),
      primaryContainer: Color(0xff662482),
      onPrimaryContainer: Color(0xfff5ceff),
      secondary: Color(0xffdebbe7),
      onSecondary: Color(0xff40264a),
      secondaryContainer: Color(0xff51365a),
      onSecondaryContainer: Color(0xffedc9f6),
      tertiary: Color(0xffffb0c9),
      onTertiary: Color(0xff630334),
      tertiaryContainer: Color(0xff7d1c48),
      onTertiaryContainer: Color(0xffffcedb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff171218),
      onSurface: Color(0xffeadfe8),
      onSurfaceVariant: Color(0xffd1c2d1),
      outline: Color(0xff9a8d9b),
      outlineVariant: Color(0xff4e434f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeadfe8),
      inversePrimary: Color(0xff8441a0),
      primaryFixed: Color(0xfff8d8ff),
      onPrimaryFixed: Color(0xff320047),
      primaryFixedDim: Color(0xffebb2ff),
      onPrimaryFixedVariant: Color(0xff6a2786),
      secondaryFixed: Color(0xfff8d8ff),
      onSecondaryFixed: Color(0xff291133),
      secondaryFixedDim: Color(0xffdebbe7),
      onSecondaryFixedVariant: Color(0xff583d61),
      tertiaryFixed: Color(0xffffd9e3),
      onTertiaryFixed: Color(0xff3e001e),
      tertiaryFixedDim: Color(0xffffb0c9),
      onTertiaryFixedVariant: Color(0xff81204b),
      surfaceDim: Color(0xff171218),
      surfaceBright: Color(0xff3d373e),
      surfaceContainerLowest: Color(0xff110d12),
      surfaceContainerLow: Color(0xff1f1a20),
      surfaceContainer: Color(0xff231e24),
      surfaceContainerHigh: Color(0xff2e282f),
      surfaceContainerHighest: Color(0xff39333a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
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


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily dark;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.dark,
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
