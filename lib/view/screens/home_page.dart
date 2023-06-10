import 'package:aplication/core/response_handler.dart';
import 'package:aplication/model/data_model.dart';
import 'package:aplication/server/post_service.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: FutureBuilder(
        future: PostService.getPosts(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            List<DataModel> data =
                (snapshot.data as SuccessResponse).model as List<DataModel>;
            return ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(data[index].profileImg.toString()),
                        ),
                        title: Text(data[index].user.toString()),
                        subtitle: Text(data[index].job.toString()),
                      ),
                      SizedBox(height: 10),
                      Text(data[index].post.toString()),
                      Visibility(
                        visible: data[index].postImg!.isNotEmpty,
                          child:
                              Image.network(data[index].profileImg.toString(),fit: BoxFit.cover,)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [Text('77')],
                          ),
                          Row(
                            children: [Text('11 comments')],
                          )
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.favorite_border),
                              Text('Like')
                            ],
                          ),
                          Column(
                            children: [Icon(Icons.comment), Text('Comment')],
                          ),
                          Column(
                            children: [Icon(Icons.share), Text('Share')],
                          ),
                          Column(
                            children: [Icon(Icons.send_sharp), Text('Send')],
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: data.length,
            );
          }
        },
      ),
    );
  }
}
