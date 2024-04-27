import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import './dashboard.dart';
import './Profile.dart';
import './Inbox.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/homepage';
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: const Dashboard(),
          item: ItemConfig(
            icon: const Icon(Icons.dashboard),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: const Inbox(),
          item: ItemConfig(
            icon: const Icon(Icons.email),
            title: "Inbox",
          ),
        ),
        PersistentTabConfig(
          screen: const Profile(),
          item: ItemConfig(
            icon: const Icon(Icons.account_circle_sharp),
            title: "Profile",
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
