import 'package:flutter/material.dart';
import 'package:popular/models/person.dart';
import 'package:popular/repositories/people_repository.dart';


class PeopleListProvider extends ChangeNotifier{
  Person people;
  PeopleRepositry _peopleRepository = PeopleRepositry();

  PeopleListProvider(){
    getPeople();
  }

  void getPeople() {
    _peopleRepository.fetchPeople().then(
            (newPeople){
          people = newPeople;
          notifyListeners();
        }
    );
  }
}