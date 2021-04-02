//     final details = detailsFromJson(jsonString);


import 'dart:convert';
import 'package:popular/models/images.dart';
import 'package:http/http.dart' as http;
class ImagesService{




  Future<Details> fetchDetails(personId) async{

    final response = await http.get('https://api.themoviedb.org/3/person/${personId}/images?api_key=926adf3ba1b8d60fe713dc69db3b32ef');
    if(response.statusCode == 200){
      // return (json.decode(response.body) as List).map((e) => Post.fromJson(e)).toList();
      return   Images.fromJson(json.decode(response.body));
    }else{
      throw Exception('FAILED TO LOAD POST');
    }
  }
}