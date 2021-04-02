import 'package:flutter/material.dart';
import 'package:popular/models/details.dart';
import 'package:popular/repositories/people_repository.dart';


class DetailsProvider extends ChangeNotifier{
  Details details;
  PeopleRepositry _peopleRepository = PeopleRepositry();
final int personId;
  DetailsProvider(this.personId){

    getDetails();
  }

  void getDetails() {
    _peopleRepository.fetchDetails(personId).then(
            (newDetails){
          details = newDetails;
          notifyListeners();
        }
    );
  }
}

