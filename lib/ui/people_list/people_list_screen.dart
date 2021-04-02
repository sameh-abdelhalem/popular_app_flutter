import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:popular/ui/people_list/people_list_provider.dart';

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

          if (peopleListProvider.people!=null) {

            return ListView.builder(
              itemCount: peopleListProvider.people.results.length,
              itemBuilder: (ctx, index) {
                final person = peopleListProvider.people;

                return PersonWidget(people: people,);
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













