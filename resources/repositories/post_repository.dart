
import 'package:flutter_provider/models/details.dart';
import 'package:flutter_provider/models/post.dart';
import 'package:flutter_provider/services/post_service.dart';
import 'package:flutter_provider/services/details_service.dart';

class PostRepository{
  PostService _postService = PostService();
  DetailsService _detailsService =DetailsService();
  Future<Post> fetchPosts(){
    return _postService.fetchPosts();
  }
  Future<Details> fetchDetails(movieId){
    return _detailsService.fetchDetails(movieId);
  }
}
