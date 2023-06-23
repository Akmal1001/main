import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage('https://source.unsplash.com/random'),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
