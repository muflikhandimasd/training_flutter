
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_flutter/core/constants/message.dart';
import 'package:training_flutter/core/enum/api_status.dart';
import 'package:training_flutter/core/helpers/get_error_message.dart';
import 'package:training_flutter/core/helpers/is_internet_available.dart';
import 'package:training_flutter/core/models/user.dart';
import 'package:training_flutter/services/auth_service.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState()){
    _checkIsLoggedIn();
  }

  void _checkIsLoggedIn() async {
    final user = await AuthService.getLoggedInUser();
    if (user != null) {
      emit(state.copyWith(
        user: user,
        isLoggedInStatus: ApiStatus.success,
      ));
    } else {
      emit(state.copyWith(
        isLoggedInStatus: ApiStatus.error,
      ));
    }
  }

  void login({
    required String email,
    required String password,
  })async {
    emit(state.copyWith(
      loginStatus: ApiStatus.loading,
    ));
    if (await isInternetAvailable()) {
       try {
      final user = await AuthService.login(
        email: email,
        password: password,
      );
      emit(state.copyWith(
        loginStatus: ApiStatus.success,
        user: user,
      ));
    } on DioException catch (e) {
      emit(state.copyWith(
        loginStatus: ApiStatus.error,
        message: getErrorMessage(e),
      ));
    }
    } else {
      emit(state.copyWith(
        loginStatus: ApiStatus.error,
        message: noInternetMessage,
      ));
    }
  }  

  void register({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(state.copyWith(
      registerStatus: ApiStatus.loading,
    ));
    if (await isInternetAvailable()) {
      try {
       final user = await AuthService.register(
          name: name,
          email: email,
          password: password,
        );
        emit(state.copyWith(
          registerStatus: ApiStatus.success,
          user: user,
        ));
      } on DioException catch (e) {
        emit(state.copyWith(
          registerStatus: ApiStatus.error,
          message: getErrorMessage(e),
        ));
      }
    } else {
      emit(state.copyWith(
        registerStatus: ApiStatus.error,
        message: noInternetMessage,
      ));
    }
  }

  void logout() async {
    emit(state.copyWith(
      logoutStatus: ApiStatus.loading,
    ));
    if (await isInternetAvailable()) {
      try {
        await AuthService.logout();
        emit(state.copyWith(
          logoutStatus: ApiStatus.success,
          user: null,
        ));
      } on DioException catch (e) {
        emit(state.copyWith(
          logoutStatus: ApiStatus.error,
          message: getErrorMessage(e),
        ));
      }
    } else {
      emit(state.copyWith(
        logoutStatus: ApiStatus.error,
        message: noInternetMessage,
      ));
    }
  }
}
