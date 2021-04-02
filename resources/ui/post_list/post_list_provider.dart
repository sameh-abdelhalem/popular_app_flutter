import 'package:flutter/material.dart';
import 'package:flutter_provider/models/post.dart';
import 'package:flutter_provider/repositories/post_repository.dart';

class PostsProvider extends ChangeNotifier{
  Post posts;
  PostRepository _postRepository = PostRepository();

  PostsProvider(){
    getPosts();
  }

  void getPosts() {
    _postRepository.fetchPosts().then(
            (newPosts){
          posts = newPosts;
          notifyListeners();
        }
    );
  }
}