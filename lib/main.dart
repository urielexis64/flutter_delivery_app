import 'package:clean_architecture_app/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'presentation/splash/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _borderLight = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
          color: DeliveryColors.veryLightGrey,
          width: 2,
          style: BorderStyle.solid),
    );
    final _borderDark = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
          color: DeliveryColors.grey, width: 2, style: BorderStyle.solid),
    );

    final lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        color: DeliveryColors.white,
      ),
      canvasColor: DeliveryColors.white,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: DeliveryColors.purple),
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.purple,
        displayColor: DeliveryColors.purple,
      ),
      bottomAppBarColor: DeliveryColors.veryLightGrey,
      //primaryIconTheme: const IconThemeData(color: DeliveryColors.white),
      //iconTheme: const IconThemeData(color: DeliveryColors.white),
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
      appBarTheme: AppBarTheme(
        color: DeliveryColors.purple,
        toolbarTextStyle: GoogleFonts.poppinsTextTheme()
            .apply(
              bodyColor: DeliveryColors.purple,
              displayColor: DeliveryColors.purple,
            )
            .copyWith(headline6: const TextStyle(fontSize: 20))
            .bodyText2,
        titleTextStyle: GoogleFonts.poppinsTextTheme()
            .apply(
              bodyColor: DeliveryColors.purple,
              displayColor: DeliveryColors.purple,
            )
            .copyWith(headline6: const TextStyle(fontSize: 20))
            .headline6,
      ),
      bottomAppBarColor: Colors.transparent,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: DeliveryColors.white),
      canvasColor: DeliveryColors.grey,
      scaffoldBackgroundColor: DeliveryColors.dark,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.green,
        displayColor: DeliveryColors.green,
      ),
      iconTheme: const IconThemeData(color: DeliveryColors.white),
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
    );
    return MaterialApp(
      title: 'Material App',
      home: const LoginScreen(),
      theme: darkTheme,
    );
  }
}
