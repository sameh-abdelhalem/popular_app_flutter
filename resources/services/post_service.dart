
import 'dart:convert';

import 'package:flutter_provider/models/post.dart';
import 'package:http/http.dart' as http;

class PostService{
  Future<Post> fetchPosts() async{
    final response = await http.get('https://api.themoviedb.org/4/discover/movie?api_key=6557d01ac95a807a036e5e9e325bb3f0&sort_by=popularity.desc');
    if(response.statusCode == 200){
      // return (json.decode(response.body) as List).map((e) => Post.fromJson(e)).toList();
      return   Post.fromJson(json.decode(response.body));
    }else{
      throw Exception('FAILED TO LOAD POST');
    }
  }
}