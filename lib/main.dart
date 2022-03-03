import 'package:clean_architecture_app/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/splash/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      theme: darkTheme,
    );
  }
}
