import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
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
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: 360,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://img.freepik.com/free-vector/creative-sales-banner-with-abstract-details_52683-67038.jpg?w=2000'))),
                  ),
                  SizedBox(
                    height: 50,
                    child: Text(
                        'An informational text is a piece of non-fiction writing that aims to educate or inform the reader about a topic. Unlike fiction or some other types of nonfiction texts, an informational text doesn`t use characters'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
