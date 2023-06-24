import 'package:flutter/material.dart';

class HeroAnimationPage extends StatelessWidget {
  const HeroAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation Demo')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return HeroDetailPage();
            }));
          },
          child: Hero(
              tag: 'hero-tag',
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              )),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail Page'),
      ),
      body: Center(
        child: Hero(tag: 'hero-tag', child: Container(
          width: 400,
          height: 400,
          color: Colors.red,
        )),
      ),
    );
  }
}
