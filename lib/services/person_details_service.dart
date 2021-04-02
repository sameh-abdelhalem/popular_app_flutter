//     final details = detailsFromJson(jsonString);


import 'dart:convert';
import 'package:popular/models/details.dart';
import 'package:http/http.dart' as http;
class DetailsService{




  Future<Details> fetchDetails(personId) async{

    final response = await http.get('https://api.themoviedb.org/3/person/${personId}?api_key=926adf3ba1b8d60fe713dc69db3b32ef&language=en-US');
    if(response.statusCode == 200){
      // return (json.decode(response.body) as List).map((e) => Post.fromJson(e)).toList();
      return   Details.fromJson(json.decode(response.body));
    }else{
      throw Exception('FAILED TO LOAD POST');
    }
  }
}