import 'package:clean_architecture_app/presentation/splash/theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 3, color: DeliveryColors.green)),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.uLmlpq5Mxm80LJ991WOPmgHaHa?pid=ImgDet&rs=1'),
                  ),
                ),
                Text('Username',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary))
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Personal Information',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          const SizedBox(height: 25),
                          const Text(
                            'email@email.com',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Dark Mode'),
                              Switch(
                                activeColor:
                                    Theme.of(context).colorScheme.primary,
                                value: true,
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: DeliveryColors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text('Log out'),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
