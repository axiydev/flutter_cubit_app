// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostWrapper _$$_PostWrapperFromJson(Map<String, dynamic> json) =>
    _$_PostWrapper(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      skip: json['skip'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$_PostWrapperToJson(_$_PostWrapper instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
