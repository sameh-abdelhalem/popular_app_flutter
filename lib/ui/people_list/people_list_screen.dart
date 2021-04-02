import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class PeopleListScreen extends StatelessWidget {
  PeopleListScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override

  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PeopleListProvider>(
      create: (context)=> PeopleListProvider(),
      child: Consumer<PeopleListProvider>(
        builder: (buildContext,peopleListProvider,_){

          if (PeopleListProvider.people!=null) {

            return ListView.builder(
              itemCount: peopleListProvider.posts.results.length,
              itemBuilder: (ctx, index) {
                final person = peopleListProvider.people;
                print(post);
                return PersonWidget(post: post,);
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













