import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: const Center(child: Text("Halaman Profile")),
      ),
    );
  }
}
