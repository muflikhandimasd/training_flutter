part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    @Default(ApiStatus.initial) ApiStatus loginStatus,
    @Default(ApiStatus.initial) ApiStatus registerStatus,
    @Default(ApiStatus.initial) ApiStatus logoutStatus,
    @Default(ApiStatus.initial) ApiStatus isLoggedInStatus,
    @Default('') String message
  }) = _AuthState;
}
