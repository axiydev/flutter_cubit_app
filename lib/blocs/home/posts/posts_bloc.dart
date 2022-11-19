import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_app/data/model/post.dart';
import 'package:flutter_cubit_app/data/repository/posts_api_repository.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostApiRepository apiRepository;
  PostsBloc({required this.apiRepository}) : super(PostsInitial()) {
    on<PostsEvent>(onPostsEvent);
  }

  void onPostsEvent(event, emit) async {
    if (event == PostsEvent.loadData) {
      try {
        emit(PostsLoadingState(true));

        final data = await apiRepository.getPosts();
        if (data != null) {
          emit(PostsLoadingState(false));
          emit(PostsDataState(data));
        } else {
          emit(PostsLoadingState(false));
          emit(PostsFailureState('exception'));
        }
      } catch (e) {
        emit(PostsLoadingState(false));
        emit(PostsFailureState(e));
      }
    } else if (event == PostsEvent.refresh) {
      try {
        emit(PostsLoadingState(true));

        final data = await apiRepository.getPosts();
        if (data != null) {
          emit(PostsLoadingState(false));
          emit(PostsDataState(data));
        } else {
          emit(PostsLoadingState(false));
          emit(PostsFailureState('exception'));
        }
      } catch (e) {
        emit(PostsLoadingState(false));
        emit(PostsFailureState(e));
      }
    }
  }
}
