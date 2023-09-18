import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/login_screen.dart';
import './screens/food_items.dart';
import './screens/onboard/onboard_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Haseeb"),
        // ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    title: Text('Hello Haseeb!',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.white)),
                    subtitle: Text('Good Evening',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white54)),
                    trailing: const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://media.licdn.com/dms/image/D4D03AQEoFkEyXKTR_g/profile-displayphoto-shrink_800_800/0/1679456861065?e=2147483647&v=beta&t=66DCnDrIMnbXUzZ9Qj8NIVNpoSHLQ9Lvsny1pSHdogI'),
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(200))),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 30,
                  children: [
                    itemDashboard('Profile', CupertinoIcons.profile_circled,
                        Colors.deepOrange,
                      () {
                        // Navigate to the 'VideosScreen' widget when the 'Videos' item is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ),
                        );
                      },
                    ),
                    itemDashboard(
                      'Food',
                      Icons.dining,
                      Colors.green,
                      () {
                        // Navigate to the 'VideosScreen' widget when the 'Videos' item is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FoodItems(),
                          ),
                        );
                      },
                    ),
                    itemDashboard(
                      'Travelling',
                      Icons.card_travel,
                      Colors.green,
                      () {
                        
                      },
                    ),
                    itemDashboard(
                      'On Board',
                      Icons.delivery_dining,
                      Colors.purple,
                      () {
                        // Navigate to the 'VideosScreen' widget when the 'Videos' item is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnboardScreen(),
                          ),
                        );
                      },
                    ),
                    
                    itemDashboard(
                        'Analytics', CupertinoIcons.graph_circle, Colors.green,
                      () {},
                    ),
                    itemDashboard(
                        'Audience', CupertinoIcons.person_2, Colors.purple,
                      () {},
                    ),
                    itemDashboard(
                        'Comments', CupertinoIcons.chat_bubble_2, Colors.brown,
                      () {},
                    ),
                    itemDashboard('Revenue', CupertinoIcons.money_dollar_circle,
                        Colors.indigo,
                      () {},
                    ),
                    itemDashboard(
                        'Upload', CupertinoIcons.add_circled, Colors.teal,
                      () {},
                    ),
                    itemDashboard(
                        'About', CupertinoIcons.question_circle, Colors.blue,
                      () {},
                    ),
                    itemDashboard(
                        'Contact', CupertinoIcons.phone, Colors.pinkAccent,
                      () {},
                    ),
                    itemDashboard(
                        'Laptop', CupertinoIcons.device_laptop, Colors.teal,
                      () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background, VoidCallback onPressed) =>
   InkWell(
    onTap: onPressed,
     child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 5),
                    color: Theme.of(context).primaryColor.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 5)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: background,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(iconData, color: Colors.white)),
              const SizedBox(height: 8),
              Text(title.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium)
            ],
          ),
        ),
   );
}
