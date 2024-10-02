import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: TextStyle(fontSize: 30),
          ),
          Icon(
            Icons.newspaper,
            size: 60,
          )
        ],
      ),
    );
  }
}
