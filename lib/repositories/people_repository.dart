


import 'package:popular/models/details.dart';
import 'package:popular/models/images.dart';
import 'package:popular/models/person.dart';
import 'package:popular/services/people_list_service.dart';
import 'package:popular/services/person_details_service.dart';
import 'package:popular/services/person_images_service.dart';

class PeopleRepositry{
  PeopleListService _peopleListService = PeopleListService();
  DetailsService _detailsService =DetailsService();
  ImagesService _imagesService =ImagesService();

  Future<Person> fetchPeople(){
    return _peopleListService.fetchPosts();
  }
  Future<Details> fetchDetails(personId){
    return _detailsService.fetchDetails(personId);
  }
  Future<Images> fetchImages(personId){
    return _imagesService.fetchImages(personId);
  }
}
