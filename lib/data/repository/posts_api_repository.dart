import 'dart:developer';

import 'package:flutter_cubit_app/data/dataprovider/posts_api.dart';
import 'package:flutter_cubit_app/data/model/post.dart';

class PostApiRepository {
  final PostApi? postApi;
  PostApiRepository({required this.postApi});

  Future<List<Post?>?> getPosts() async {
    try {
      final postWrapper = await postApi!.getPostWrapper();
      return postWrapper.posts;
    } catch (e) {
      log(e.toString());
    }
    return [Post.fromJson({})];
  }
}
