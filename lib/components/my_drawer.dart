import 'package:flutter/material.dart';
import 'package:test_run_flutter/auth/auth_service.dart';
import 'package:test_run_flutter/pages/home_page.dart';
import 'package:test_run_flutter/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(999),
                bottomRight: Radius.circular(999))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              DrawerHeader(
                  child: Center(
                child: Icon(
                  Icons.message,
                  size: 60,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      'H O M E',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsPage()));
                    },
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.settings,
                    ),
                    title: const Text(
                      'S E T T I N G S',
                    )),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    AuthService auth = AuthService();
                    auth.signOut();
                  },
                  contentPadding: const EdgeInsets.all(10),
                  leading: const Icon(
                    Icons.logout,
                  ),
                  title: const Text(
                    'L O G O U T',
                  )),
            ),
          ],
        ));
  }
}
