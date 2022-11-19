part of 'posts_bloc.dart';

abstract class PostsState extends Equatable {
  const PostsState();
  @override
  List<Object> get props => [];
}

class PostsInitial extends PostsState {}

// ignore: must_be_immutable
class PostsDataState extends PostsState {
  List<Post?> posts;
  PostsDataState(this.posts);
}

// ignore: must_be_immutable
class PostsFailureState extends PostsState {
  Object error;
  PostsFailureState(this.error);
}

// ignore: must_be_immutable
class PostsLoadingState extends PostsState {
  bool? isLoading;
  PostsLoadingState(this.isLoading);
}
