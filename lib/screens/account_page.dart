import 'package:flutter/material.dart';

class AccaountPage extends StatelessWidget {
  const AccaountPage({super.key});

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
              Column(
                children: [Text('10'), Text('Preferred list')],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [Text('10'), Text('Followed stores')],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [Text('10'), Text('Vaucher List')],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [Icon(Icons.receipt), Text('To pay')],
            ),
            Column(
              children: [Icon(Icons.send), Text('To send')],
            ),
            Column(
              children: [Icon(Icons.delivery_dining), Text('To recive')],
            ),
            Column(
              children: [Icon(Icons.reviews_outlined), Text('Review')],
            ),
          ],
        ),
        SizedBox(
          height: 400.0,
          width: 390.0,
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 338.0,
                          width: 338.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://previews.123rf.com/images/artemstepanov/artemstepanov1611/artemstepanov161100172/66430429-big-sale-poster-with-big-sale-text-advertising-boom-and-red-banner-template.jpg'))),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
