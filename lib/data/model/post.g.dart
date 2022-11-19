// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      userId: json['userId'] as int?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      reactions: json['reactions'] as num?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
      'tags': instance.tags,
      'reactions': instance.reactions,
    };
