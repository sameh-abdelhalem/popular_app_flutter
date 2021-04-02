// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_provider/ui/post_details/post_details_screen.dart';
//
// class DetailsWidget extends StatelessWidget {
//   final details;
//
//   const DetailsWidget({Key key, this.details}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//
//       return  Padding(
//         padding: const EdgeInsets.all(4.0),
//         child: Card(
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12)),
//             child: Row(
//
//               children: [
//                 SizedBox(
//                     height: 100, child: Image.network('https://image.tmdb.org/t/p/w500/${details.posterPath}')),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children:[
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(2.0),
//                             child: Center(
//                                 child: Text(
//                                   details.title,
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold),
//                                 )),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(2.0),
//                             child: Center(
//                                 child: Text(
//                                   'Release on: ${ details.releaseDate}',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       color:
//                                       CupertinoColors.inactiveGray),
//                                 )),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(2.0),
//                             child: Center(
//                                 child: Text(
//                                   'Rating: ${ details.voteAverage}',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       color:
//                                       CupertinoColors.inactiveGray),
//                                 )),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(2.0),
//                             child: Center(
//                                 child: Text(
//                                   'Vote Count: ${ details.voteCount}',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       color:
//                                       CupertinoColors.inactiveGray),
//                                 )),
//                           ), // getTextWidgets( post.results[index].title),
//
//                         ],
//                       ),
//
//                     ],
//
//                   ),
//                 ),
//
//               ],
//             )),
//       );
//
//   }
// }