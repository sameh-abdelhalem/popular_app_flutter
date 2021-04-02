
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:popular/models/person.dart';

class PeopleListService{
  Future<Person> fetchPosts() async{
    final response = await http.get('https://api.themoviedb.org/3/person/popular?api_key=926adf3ba1b8d60fe713dc69db3b32ef&language=en-US&page=1');
    if(response.statusCode == 200){
      return   Person.fromJson(json.decode(response.body));
    }else{
      throw Exception('FAILED TO LOAD PERSON');
    }
  }
}