import 'package:flutter/material.dart';
import 'package:flutter_mapp/pages/home_page.dart';
import 'package:flutter_mapp/pages/profile_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentPgae = 0;
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: const HomePage(),
      body: pages.elementAt(currentPgae),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedIndex: currentPgae,
        onDestinationSelected: (int value) {
          setState(() {
            currentPgae = value;
          });
        },
      ),
    );
  }
}
