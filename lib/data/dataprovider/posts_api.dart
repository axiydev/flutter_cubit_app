import 'package:dio/dio.dart';
import 'package:flutter_cubit_app/data/model/posts.dart';
import 'package:retrofit/retrofit.dart';

part 'posts_api.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class PostApi {
  factory PostApi(Dio dio) = _PostApi;

  @GET('/posts')
  Future<PostWrapper> getPostWrapper();
}
