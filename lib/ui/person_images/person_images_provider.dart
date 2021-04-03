import 'package:flutter/material.dart';
import 'package:popular/models/images.dart';
import 'package:popular/repositories/people_repository.dart';


class ImagesProvider extends ChangeNotifier{
  Images images;
  PeopleRepositry _peopleRepository = PeopleRepositry();
  final int personId;
  ImagesProvider(this.personId){

    getImages();
  }

  void getImages() {
    _peopleRepository.fetchImages(personId).then(
            (newImages){
          images = newImages;
          notifyListeners();
        }
    );
  }
}

