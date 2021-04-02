import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popular/ui/person_details/person_details_screen.dart';



class DetailsWidget extends StatelessWidget {
  final  details;
  const DetailsWidget({Key key, this.details}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(4.0),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Column(

                children: [

                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Center(
                                  child: Text(
                                    details.name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,bottom: 10),
                              child: Container(
                                  width: MediaQuery.of(context).size.width * 0.8,
                                  child: Text('biography: ${details.biography}')
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Center(
                                  child: Text(
                                    'birthday: ${ details.birthday}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:
                                        CupertinoColors.inactiveGray),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Center(
                                  child: Text(
                                    'Rating: ${ details.popularity}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:
                                        CupertinoColors.inactiveGray),
                                  )),
                            ),


                          ],
                        ),

                      ],

                    ),
                  ),

                ],
              )),
        )); ;
  }
}

















