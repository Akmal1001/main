import 'package:aplication/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
                            children: [SvgPicture.asset("assets/e-commerce-logo 1.svg")],
                          ),
                        ),
                      ),
                      floatingActionButtonLocation:
                          FloatingActionButtonLocation.centerFloat,
                      floatingActionButton: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.02),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0))),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
                                },
                                child: const Text(
                                  'NEXT',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500),
                                )),
                          )),
                    );
  }
}