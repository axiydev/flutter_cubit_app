import 'package:flutter_cubit_app/data/model/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts.freezed.dart';
part 'posts.g.dart';

@freezed
class PostWrapper with _$PostWrapper {
  const factory PostWrapper(
      {List<Post?>? posts, int? total, int? skip, int? limit}) = _PostWrapper;

  factory PostWrapper.fromJson(Map<String, dynamic> json) =>
      _$PostWrapperFromJson(json);
}
