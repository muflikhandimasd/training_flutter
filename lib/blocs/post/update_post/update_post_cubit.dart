import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_flutter/core/enum/api_status.dart';

part 'update_post_state.dart';
part 'update_post_cubit.freezed.dart';

class UpdatePostCubit extends Cubit<UpdatePostState> {
  UpdatePostCubit() : super(UpdatePostState());

  void updateThumbnail(File file) {
    emit(state.copyWith(thumbnail: file));
  }

  
}
