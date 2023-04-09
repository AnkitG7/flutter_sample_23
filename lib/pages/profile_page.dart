import 'package:flutter/material.dart';
import 'package:flutter_mapp/core/constants.dart';
import 'package:flutter_mapp/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(children: const [
        CircleAvatar(
          radius: kProfileImage,
          backgroundImage: AssetImage("images/profile.png"),
        ),
        SizedBox(
          height: kDouble20,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("AWD Space Travel"),
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text("awd@gamil.com"),
        ),
        ListTile(
          leading: Icon(Icons.web),
          title: Text("awd.com"),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
