import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// apptheme
final ThemeData apptheme = ThemeData(
  textTheme: textTheme,
  primaryColor: primaryColor,
  accentColor: accentColor,
  elevatedButtonTheme: elevatedButtonTheme,
  outlinedButtonTheme: outlinedButtonTheme,
);

// colors
const Color primaryColor = Color(0xffFF5A5F);
const Color accentColor = Color(0xff00A699);

// input decoration
final InputDecorationTheme inputDecoration = InputDecorationTheme(
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
);

// elevated button theme
final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    primary: primaryColor,
    elevation: 0,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    textStyle: TextStyle(
      fontFamily: textTheme.button!.fontFamily,
      fontSize: textTheme.button!.fontSize,
    ),
  ),
);

//outlined button theme
final OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    primary: primaryColor,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    side: const BorderSide(color: primaryColor, width: 1.5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    textStyle: TextStyle(
        fontFamily: textTheme.button!.fontFamily,
        fontSize: textTheme.button!.fontSize,
        color: primaryColor),
  ),
);

// textTheme
final ThemeData base = ThemeData.light().copyWith(
  textTheme: GoogleFonts.notoSansTextTheme(),
);
final textTheme = basicTextTheme(base.textTheme);
TextTheme basicTextTheme(TextTheme base) {
  return base.copyWith(
    // main page title
    headline1: base.headline1!.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 70,
      color: Colors.black,
    ),
    // page title
    headline2: base.headline2!.copyWith(
      fontWeight: FontWeight.w900,
      fontSize: 48,
      color: Colors.black,
    ),

    // Onboarding title
    headline3: base.headline3!.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: Colors.black,
    ),

    // nudges text
    headline4: base.headline4!.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.white70,
    ),

    // colored title
    headline5: base.headline5!.copyWith(
      color: Colors.blue[400],
    ),

    // section title
    headline6: base.headline6!.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Colors.black,
    ),

    // small titles
    subtitle1: base.subtitle1!.copyWith(
      fontSize: 20,
      color: Colors.black,
    ),

    // normal body text
    bodyText1: base.bodyText1!.copyWith(
      fontSize: 16,
      color: Colors.black,
    ),

    // normal grey body text
    bodyText2: base.bodyText2!.copyWith(
      fontSize: 16,
      color: Colors.grey[600],
    ),

    // hint text
    caption: base.bodyText2!.copyWith(
      fontSize: 14,
      color: Colors.grey[600],
    ),

    // button text
    button: base.button!.copyWith(
      fontSize: 15,
      color: Colors.black,
    ),
  );
}
