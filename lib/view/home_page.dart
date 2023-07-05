import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 150),
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.dark_mode,color: Colors.white,size: 60.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.white,size: 30.0),
                         Icon(Icons.star,color: Colors.white,size: 30.0),
                          Icon(Icons.star,color: Colors.white,size: 30.0)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.white,size: 30.0),
                         Icon(Icons.star,color: Colors.white,size: 30.0),
                          Icon(Icons.star,color: Colors.white,size: 30.0),
                          Icon(Icons.star,color: Colors.white,size: 30.0)
                      ],
                    ),
                       Row(
                      children: [
                        Icon(Icons.star,color: Colors.white,size: 30.0),
                         Icon(Icons.star,color: Colors.white,size: 30.0),
                          Icon(Icons.star,color: Colors.white,size: 30.0),
                          Icon(Icons.star,color: Colors.white,size: 30.0),
                          Icon(Icons.star,color: Colors.white,size: 30.0)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.red,
          ),
          SizedBox(
            height: 100,

          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.red,
          ),
             Container(
            height: 100,
            width: double.infinity,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
