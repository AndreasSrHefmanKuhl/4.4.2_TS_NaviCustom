import 'package:flutter/material.dart';

class LikeWidget extends StatelessWidget {
  const LikeWidget({
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
              'Likes',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 50),
            Text(
              textAlign: TextAlign.center,
              "Hier findest du deine gelikten Nachrichten.",
              style: (TextStyle(fontSize: 20)),
            ),
          ]),
    );
  }
}
