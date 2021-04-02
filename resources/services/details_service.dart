//     final details = detailsFromJson(jsonString);


import 'dart:convert';
import 'package:flutter_provider/models/details.dart';
import 'package:http/http.dart' as http;
class DetailsService{




  Future<Details> fetchDetails(movieId) async{

    final response = await http.get('https://api.themoviedb.org/3/movie/$movieId?api_key=6557d01ac95a807a036e5e9e325bb3f0&language=en-US');
    if(response.statusCode == 200){
      // return (json.decode(response.body) as List).map((e) => Post.fromJson(e)).toList();
      return   Details.fromJson(json.decode(response.body));
    }else{
      throw Exception('FAILED TO LOAD POST');
    }
  }
}