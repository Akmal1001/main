import 'package:aplication/bottom_page/bottom_navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.white, Colors.blue]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/e-commerce-logo 1.svg"),
              TextFormField(
                controller: usernameController,
                decoration:
                    const InputDecoration(hintText: 'Type here username'),
              ),
              TextFormField(
                controller: passwordController,
                decoration:
                    const InputDecoration(hintText: 'Type here password'),
              ),
            ],
          ),
        ),
      ),floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavPage()));
      },child: Text('Login'),),
    );
  }
}
