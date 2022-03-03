import 'package:flutter/material.dart';

class DeliveryColors {
  static const purple = Color(0XFF5117AC);
  static const green = Color(0XFF20D0C4);
  static const dark = Color(0XFF03091E);
  static const grey = Color(0XFF212738);
  static const lightGrey = Color(0XFFBBBBBB);
  static const veryLightGrey = Color(0XFFF3F3F3);
  static const white = Color(0XFFFFFFFF);
  static const pink = Color(0XFFF5638B);
}

final deliveryGradient = [DeliveryColors.green, DeliveryColors.purple];
/* 
final _borderLight = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
      color: DeliveryColors.veryLightGrey, width: 2, style: BorderStyle.solid),
);
final _borderDark = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
      color: DeliveryColors.grey, width: 2, style: BorderStyle.solid),
);

final lightTheme = ThemeData(
  canvasColor: DeliveryColors.white,
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: DeliveryColors.purple),
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.purple,
    displayColor: DeliveryColors.purple,
  ),
  inputDecorationTheme: InputDecorationTheme(
      border: _borderLight,
      contentPadding: EdgeInsets.zero,
      enabledBorder: _borderLight,
      focusedBorder: _borderLight,
      labelStyle: const TextStyle(color: DeliveryColors.purple),
      hintStyle: GoogleFonts.poppins(
        color: DeliveryColors.lightGrey,
        fontSize: 10,
      ),
      prefixIconColor: DeliveryColors.purple),
);

final darkTheme = ThemeData(
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: DeliveryColors.white),
  canvasColor: DeliveryColors.grey,
  scaffoldBackgroundColor: DeliveryColors.dark,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.green,
    displayColor: DeliveryColors.green,
  ),
  inputDecorationTheme: InputDecorationTheme(
      border: _borderDark,
      enabledBorder: _borderDark,
      contentPadding: EdgeInsets.zero,
      focusedBorder: _borderDark,
      fillColor: DeliveryColors.grey,
      filled: true,
      labelStyle: const TextStyle(color: DeliveryColors.white),
      hintStyle: GoogleFonts.poppins(
        color: DeliveryColors.white,
        fontSize: 10,
      ),
      prefixIconColor: DeliveryColors.white),
); */
