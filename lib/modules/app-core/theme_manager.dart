import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../generated/l10n.dart';

class ColorNaming {
  final Color primary;
  final Color onPrimary;
  final Color primary2;
  final Color surface;
  final Color surfaceLighter;
  final Color surfaceDarker;
  final Color onSurface;
  final Color background;
  final Color background2;
  final Color onBackground;
  final Brightness brightness;

  ColorNaming({
    required this.primary,
    required this.onPrimary,
    required this.primary2,
    required this.surface,
    required this.surfaceLighter,
    required this.surfaceDarker,
    required this.onSurface,
    required this.background,
    required this.background2,
    required this.onBackground,
    required this.brightness,
  });

  ColorNaming copyWith({
    Color? primary,
    Color? onPrimary,
    Color? primary2,
    Color? surface,
    Color? surfaceLighter,
    Color? surfaceDarker,
    Color? onSurface,
    Color? background,
    Color? background2,
    Color? onBackground,
    Brightness? brightness,
  }) {
    return ColorNaming(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      primary2: primary2 ?? this.primary2,
      surface: surface ?? this.surface,
      surfaceLighter: surfaceLighter ?? this.surfaceLighter,
      surfaceDarker: surfaceDarker ?? this.surfaceDarker,
      onSurface: onSurface ?? this.onSurface,
      background: background ?? this.background,
      background2: background2 ?? this.background2,
      onBackground: onBackground ?? this.onBackground,
      brightness: brightness ?? this.brightness,
    );
  }
}

class AppTheme {
  final String id;
  final ColorNaming themeData;

  AppTheme(this.id, this.themeData);
}

class ThemeManager {
  late final AppTheme appTheme;

  ThemeManager(
    String themeId,
  ) {
    var theme = getThemes().singleWhere((element) => element.id == themeId);
    appTheme = theme;
  }

  ThemeData currentThemeData(BuildContext context) {
    var colorNaming = appTheme.themeData;
    return ThemeData(
      colorScheme: getColorScheme(appTheme.themeData),
      brightness: colorNaming.brightness,
      primaryColor: colorNaming.primary,
      primaryColorBrightness: colorNaming.brightness,
      primaryColorDark: colorNaming.primary,
      backgroundColor: colorNaming.background,
      appBarTheme: AppBarTheme(
        color: colorNaming.background,
        systemOverlayStyle:
            getSystemUiOverlayStyle(context, brightness: Brightness.dark),
        titleTextStyle: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
          color: colorNaming.primary,
        ),
        toolbarTextStyle: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
          color: colorNaming.primary,
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: colorNaming.primary),
      ),
      textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme),
      canvasColor: colorNaming.background,
      scaffoldBackgroundColor: colorNaming.background,
      highlightColor: Colors.transparent,
      focusColor: colorNaming.primary,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          Colors.black.withOpacity(0.80),
          Colors.white,
        ),
        contentTextStyle: TextStyle(
          fontSize: 14.0,
          color: colorNaming.onSurface,
        ),
      ),
    );
  }

  ColorScheme getColorScheme(ColorNaming themeData) {
    return ColorScheme(
      primary: themeData.primary,
      primaryVariant: themeData.primary2,
      secondary: themeData.primary,
      secondaryVariant: themeData.primary2,
      onSecondary: const Color(0xFF322942),
      background: themeData.background,
      surface: themeData.surface,
      //0xFF747679
      onBackground: themeData.onBackground,
      error: Colors.black,
      onError: Colors.black,
      onPrimary: themeData.onPrimary,
      onSurface: themeData.onSurface,
      brightness: themeData.brightness,
    );
  }

  List<AppTheme> getThemes() {
    return [
      AppTheme("1", darkColorScheme),
      AppTheme("0", lightColorScheme),
    ];
  }

  ColorNaming lightColorScheme = ColorNaming(
    primary: Colors.red,
    onPrimary: Colors.white,
    primary2: const Color(0xFF84de36),
    surfaceDarker: const Color(0xff2f343b),
    surface: const Color(0xFF3E4248),
    surfaceLighter: const Color(0xFF4D5258),
    onSurface: Colors.white,
    background: const Color(0xFFE6EBEB),
    background2: const Color(0xFFF8FDFD),
    onBackground: const Color(0xFF3E4248),
    brightness: Brightness.light,
  );

  ColorNaming darkColorScheme = ColorNaming(
    primary: Colors.red,
    onPrimary: Colors.white,
    primary2: const Color(0xFF84de36),
    surfaceDarker: const Color(0xFF2f343b),
    surface: const Color(0xFF3E4248),
    surfaceLighter: const Color(0xFF4D5258),
    onSurface: Colors.white,
    background: const Color(0xFF26282E),
    background2: const Color(0xFF373A42),
    onBackground: Colors.white,
    brightness: Brightness.dark,
  );

  String getNameOfTheme(BuildContext context, String id) {
    switch (id) {
      case "1":
        return S.of(context).theme_dark;
      case "0":
        return S.of(context).theme_light;
    }
    return "null";
  }
}

getSystemUiOverlayStyle(BuildContext context, {Brightness? brightness}) {
  var darkColor = const Color(0xFF26282E);
  var lightColor = const Color(0xFFE6EBEB);
  return SystemUiOverlayStyle(
    systemNavigationBarColor:
        (brightness ?? Theme.of(context).brightness) == Brightness.dark
            ? darkColor
            : lightColor,
    // navigation bar color
    statusBarColor:
        (brightness ?? Theme.of(context).brightness) == Brightness.dark
            ? darkColor
            : lightColor,
    // status bar color
    statusBarBrightness: brightness ?? Theme.of(context).brightness,
    //status bar brigtness
    statusBarIconBrightness:
        inverseBrightness(brightness ?? Theme.of(context).brightness),
    //status barIcon Brightness
    systemNavigationBarDividerColor:
        (brightness ?? Theme.of(context).brightness) == Brightness.dark
            ? darkColor
            : lightColor,
    //Navigation bar divider color
    systemNavigationBarIconBrightness:
        brightness ?? Theme.of(context).brightness, //navigation bar icon
  );
}

Brightness inverseBrightness(Brightness brightness) {
  if (brightness == Brightness.dark) {
    return Brightness.light;
  } else {
    return Brightness.dark;
  }
}
