import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 30),
            Icon(
              Icons.person,
              size: 60,
            ),
            Text("Max Mustermann", style: TextStyle(fontSize: 25)),
          ]),
    );
  }
}
