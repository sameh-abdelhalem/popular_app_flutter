


import 'package:popular/models/details.dart';
import 'package:popular/models/person.dart';
import 'package:popular/services/people_list_service.dart';
import 'package:popular/services/person_details_service.dart';

class PeopleRepositry{
  PeopleListService _peopleListService = PeopleListService();
  DetailsService _detailsService =DetailsService();
  Future<Person> fetchPeople(){
    return _peopleListService.fetchPosts();
  }
  Future<Details> fetchDetails(personId){
    return _detailsService.fetchDetails(personId);
  }
}
