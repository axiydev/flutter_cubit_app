// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostWrapper _$PostWrapperFromJson(Map<String, dynamic> json) {
  return _PostWrapper.fromJson(json);
}

/// @nodoc
mixin _$PostWrapper {
  List<Post?>? get posts => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostWrapperCopyWith<PostWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostWrapperCopyWith<$Res> {
  factory $PostWrapperCopyWith(
          PostWrapper value, $Res Function(PostWrapper) then) =
      _$PostWrapperCopyWithImpl<$Res, PostWrapper>;
  @useResult
  $Res call({List<Post?>? posts, int? total, int? skip, int? limit});
}

/// @nodoc
class _$PostWrapperCopyWithImpl<$Res, $Val extends PostWrapper>
    implements $PostWrapperCopyWith<$Res> {
  _$PostWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post?>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostWrapperCopyWith<$Res>
    implements $PostWrapperCopyWith<$Res> {
  factory _$$_PostWrapperCopyWith(
          _$_PostWrapper value, $Res Function(_$_PostWrapper) then) =
      __$$_PostWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Post?>? posts, int? total, int? skip, int? limit});
}

/// @nodoc
class __$$_PostWrapperCopyWithImpl<$Res>
    extends _$PostWrapperCopyWithImpl<$Res, _$_PostWrapper>
    implements _$$_PostWrapperCopyWith<$Res> {
  __$$_PostWrapperCopyWithImpl(
      _$_PostWrapper _value, $Res Function(_$_PostWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_PostWrapper(
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post?>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostWrapper implements _PostWrapper {
  const _$_PostWrapper(
      {final List<Post?>? posts, this.total, this.skip, this.limit})
      : _posts = posts;

  factory _$_PostWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_PostWrapperFromJson(json);

  final List<Post?>? _posts;
  @override
  List<Post?>? get posts {
    final value = _posts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  @override
  final int? skip;
  @override
  final int? limit;

  @override
  String toString() {
    return 'PostWrapper(posts: $posts, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostWrapper &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_posts), total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostWrapperCopyWith<_$_PostWrapper> get copyWith =>
      __$$_PostWrapperCopyWithImpl<_$_PostWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostWrapperToJson(
      this,
    );
  }
}

abstract class _PostWrapper implements PostWrapper {
  const factory _PostWrapper(
      {final List<Post?>? posts,
      final int? total,
      final int? skip,
      final int? limit}) = _$_PostWrapper;

  factory _PostWrapper.fromJson(Map<String, dynamic> json) =
      _$_PostWrapper.fromJson;

  @override
  List<Post?>? get posts;
  @override
  int? get total;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$_PostWrapperCopyWith<_$_PostWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
