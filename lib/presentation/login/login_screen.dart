import 'package:clean_architecture_app/presentation/home/home_screen.dart';
import 'package:clean_architecture_app/presentation/splash/theme.dart';
import 'package:clean_architecture_app/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

const logoSize = 40.0;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    const moreSize = 50;
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Positioned(
                    bottom: logoSize,
                    left: -moreSize / 2,
                    right: -moreSize / 2,
                    height: width + moreSize,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(200),
                          ),
                          gradient: LinearGradient(colors: deliveryGradient)),
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    backgroundColor: theme.canvasColor,
                    radius: logoSize,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ), // Text
                      const SizedBox(height: 40),
                      Text(
                        'Username',
                        textAlign: TextAlign.start,
                        style: theme.textTheme.caption!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.inputDecorationTheme.labelStyle!.color,
                        ),
                      ), // Text
                      const TextField(
                        decoration: InputDecoration(
                            hintText: 'Username',
                            prefixIcon: Icon(Icons.person_outline)),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Password',
                        style: theme.textTheme.caption!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.inputDecorationTheme.labelStyle!.color,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_outline_rounded)),
                      ),
                    ],
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(25),
              child: DeliveryButton(
                text: 'Login',
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ));
                },
              )),
        ],
      ),
    );
  }
}
