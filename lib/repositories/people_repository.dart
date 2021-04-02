


import 'package:popular/models/person.dart';
import 'package:popular/services/people_list_service.dart';

class PeopleRepositry{
  PeopleListService _peopleListService = PeopleListService();
  // DetailsService _detailsService =DetailsService();
  Future<Person> fetchPosts(){
    return _peopleListService.fetchPosts();
  }
  // Future<Details> fetchDetails(movieId){
  //   return _detailsService.fetchDetails(movieId);
  // }
}
