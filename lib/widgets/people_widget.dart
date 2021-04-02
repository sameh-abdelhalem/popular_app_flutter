import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class PeopleWidget extends StatelessWidget {
  final  person;
  const PeopleWidget({Key key, this.person}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print(person.id);

        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PostDetailsScreen(movieId: post.id,)));
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            child: Row(

              children: [
                SizedBox(
                    height: 100, child: Image.network('https://image.tmdb.org/t/p/w500${person.profilePath}')),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
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
                                  person.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Center(
                                child: Text(
                                  'Popularity: ${person.popularity}',
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
                                  'View Details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color:
                                      CupertinoColors.inactiveGray),
                                )),
                          ), // getTextWidgets( post.results[index].title),

                        ],
                      ),

                    ],

                  ),
                ),

              ],
            )),
      ),
    );
  }
}