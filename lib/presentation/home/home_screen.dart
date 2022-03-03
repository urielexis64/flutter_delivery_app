import 'package:clean_architecture_app/presentation/home/cart/cart_screen.dart';
import 'package:clean_architecture_app/presentation/profile/profile_screen.dart';
import 'package:clean_architecture_app/presentation/splash/theme.dart';
import 'package:flutter/material.dart';

import 'products/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: IndexedStack(
            index: currentIndex,
            children: [
              const ProductsScreen(),
              Container(
                color: Colors.green,
              ),
              CartScreen(
                onShopping: () => setState(() => currentIndex = 0),
              ),
              Container(
                color: Colors.amber,
              ),
              const ProfileScreen()
            ],
          ),
        ),
        _DeliveryNavigationBar(
            index: currentIndex,
            onIndexSelected: (index) {
              setState(() {
                currentIndex = index;
              });
            }),
      ],
    ));
  }
}

class _DeliveryNavigationBar extends StatelessWidget {
  const _DeliveryNavigationBar(
      {Key? key, required this.index, required this.onIndexSelected})
      : super(key: key);

  final int index;
  final ValueChanged<int> onIndexSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).bottomAppBarColor, width: 3),
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).canvasColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipOval(
                child: Material(
                  child: IconButton(
                      onPressed: () => onIndexSelected(0),
                      icon: Icon(Icons.home,
                          color: index == 0
                              ? DeliveryColors.green
                              : DeliveryColors.lightGrey)),
                ),
              ),
              ClipOval(
                child: Material(
                  child: IconButton(
                      onPressed: () => onIndexSelected(1),
                      icon: Icon(Icons.store,
                          color: index == 1
                              ? DeliveryColors.green
                              : DeliveryColors.lightGrey)),
                ),
              ),
              ClipOval(
                child: Material(
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: DeliveryColors.purple,
                    child: IconButton(
                        onPressed: () => onIndexSelected(2),
                        icon: Icon(Icons.shopping_basket,
                            color: index == 2
                                ? DeliveryColors.green
                                : DeliveryColors.white)),
                  ),
                ),
              ),
              ClipOval(
                child: Material(
                  child: IconButton(
                      onPressed: () => onIndexSelected(3),
                      icon: Icon(
                        Icons.favorite_border,
                        color: index == 3
                            ? DeliveryColors.green
                            : DeliveryColors.lightGrey,
                      )),
                ),
              ),
              ClipOval(
                child: InkWell(
                  onTap: () => onIndexSelected(4),
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.uLmlpq5Mxm80LJ991WOPmgHaHa?pid=ImgDet&rs=1'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
