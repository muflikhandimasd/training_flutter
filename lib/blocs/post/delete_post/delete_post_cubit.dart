import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_flutter/core/enum/api_status.dart';

part 'delete_post_state.dart';
part 'delete_post_cubit.freezed.dart';

class DeletePostCubit extends Cubit<DeletePostState> {
  DeletePostCubit() : super(DeletePostState());
}
