import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider/ui/post_details/post_details_screen.dart';

import 'package:flutter_provider/repositories/post_repository.dart';


class PostWidget extends StatelessWidget {
  final  post;
  const PostWidget({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print(post.id);

        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PostDetailsScreen(movieId: post.id,)));
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            child: Row(

              children: [
                SizedBox(
                    height: 100, child: Image.network('https://image.tmdb.org/t/p/w500/${post.posterPath}')),
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
                                  post.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Center(
                                child: Text(
                                  'Release on: ${ post.releaseDate}',
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
                                  'Rating: ${ post.voteAverage}',
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
                                  'Vote Count: ${ post.voteCount}',
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