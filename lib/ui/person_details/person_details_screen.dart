import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:popular/ui/person_details/person_details_provider.dart';
import 'package:popular/widgets/details_widget.dart';
import 'package:provider/provider.dart';

class PersonDetailsScreen extends StatelessWidget {
  final personId;

  const PersonDetailsScreen({Key key, this.personId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Person Details"),
    ),
    body:ChangeNotifierProvider<DetailsProvider>(
      create: (context)=> DetailsProvider(personId),
      child: Consumer<DetailsProvider>(
        builder: (buildContext,detailsProvider,_){

          if (detailsProvider.details!=null) {
            final details= detailsProvider.details;

            return DetailsWidget(details: details,);

          }
          else {
            return Center(
              child: CircularProgressIndicator(),

            );
          }

        },
      ),
    )
    );
  }
}




