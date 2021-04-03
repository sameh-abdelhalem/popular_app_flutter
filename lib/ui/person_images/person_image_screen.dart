import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:popular/ui/person_details/person_details_provider.dart';
import 'package:popular/widgets/details_widget.dart';
import 'package:provider/provider.dart';

class PersonImageScreen extends StatelessWidget {
  final imageLink;

  const PersonImageScreen({Key key, this.imageLink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Person Image"),
        ),
        body:Image.network(imageLink)
    );
  }
}




