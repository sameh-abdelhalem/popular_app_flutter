import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_provider/ui/post_list/post_list_provider.dart';
import 'package:flutter_provider/widgets/post_widget.dart';
import 'package:provider/provider.dart';

class PostsScreen extends StatelessWidget {
  PostsScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override

  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PostsProvider>(
      create: (context)=> PostsProvider(),
      child: Consumer<PostsProvider>(
        builder: (buildContext,postProvider,_){

          if (postProvider.posts!=null) {

            return ListView.builder(
              itemCount: postProvider.posts.results.length,
              itemBuilder: (ctx, index) {
                final post = postProvider.posts.results[index];
                print(post);
                return PostWidget(post: post,);
              },
            );
          }
          else {
            return Center(
              child: CircularProgressIndicator(),

            );
          }

        },
      ),
    );
  }

}













