import 'package:flutter/material.dart';
import 'package:flutter_provider/models/details.dart';
import 'package:flutter_provider/repositories/post_repository.dart';

class DetailsProvider extends ChangeNotifier{
  Details details;
  PostRepository _postRepository = PostRepository();
final int movieId;
  DetailsProvider(this.movieId){

    getDetails();
  }

  void getDetails() {
    _postRepository.fetchDetails(movieId).then(
            (newDetails){
          details = newDetails;
          notifyListeners();
        }
    );
  }
}

