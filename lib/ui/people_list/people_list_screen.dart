
import 'package:flutter/material.dart';
import 'package:popular/ui/people_list/people_list_provider.dart';
import 'package:popular/widgets/people_widget.dart';

import 'package:provider/provider.dart';

class PeopleListScreen extends StatelessWidget {
  PeopleListScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override

  Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
        title: Text(title),
    ),
    body:ChangeNotifierProvider<PeopleListProvider>(
      create: (context)=> PeopleListProvider(),
      child: Consumer<PeopleListProvider>(
        builder: (buildContext,peopleListProvider,_){

          if (peopleListProvider.people!=null) {

            return ListView.builder(
              itemCount: peopleListProvider.people.results.length,
              itemBuilder: (ctx, index) {
                final person = peopleListProvider.people.results[index];
                print(person);
                return PeopleWidget(person: person,);
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
    )

  ) ;
  }

}














