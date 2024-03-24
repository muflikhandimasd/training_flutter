import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_flutter/core/constants/message.dart';
import 'package:training_flutter/core/enum/api_status.dart';
import 'package:training_flutter/core/helpers/get_error_message.dart';
import 'package:training_flutter/core/helpers/is_internet_available.dart';
import 'package:training_flutter/core/models/post.dart';
import 'package:training_flutter/services/post_service.dart';

part 'post_state.dart';
part 'post_cubit.freezed.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(const PostState()){
    getPosts();
  }

  void getPosts()async {
    emit(state.copyWith(status: ApiStatus.loading));
    if (await isInternetAvailable()) {
      try {
        final posts = await PostService.getPosts();
        emit(state.copyWith(status: ApiStatus.success, posts: posts));
      } on DioException catch (e) {
        emit(state.copyWith(status: ApiStatus.error, message:getErrorMessage(e)));
      }
    } else {
      emit(state.copyWith(status: ApiStatus.error,message: noInternetMessage));
    }
  }
}
