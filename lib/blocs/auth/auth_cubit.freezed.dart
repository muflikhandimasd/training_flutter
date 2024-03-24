// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  User? get user => throw _privateConstructorUsedError;
  ApiStatus get loginStatus => throw _privateConstructorUsedError;
  ApiStatus get registerStatus => throw _privateConstructorUsedError;
  ApiStatus get logoutStatus => throw _privateConstructorUsedError;
  ApiStatus get isLoggedInStatus => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {User? user,
      ApiStatus loginStatus,
      ApiStatus registerStatus,
      ApiStatus logoutStatus,
      ApiStatus isLoggedInStatus,
      String message});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loginStatus = null,
    Object? registerStatus = null,
    Object? logoutStatus = null,
    Object? isLoggedInStatus = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      logoutStatus: null == logoutStatus
          ? _value.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      isLoggedInStatus: null == isLoggedInStatus
          ? _value.isLoggedInStatus
          : isLoggedInStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      ApiStatus loginStatus,
      ApiStatus registerStatus,
      ApiStatus logoutStatus,
      ApiStatus isLoggedInStatus,
      String message});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loginStatus = null,
    Object? registerStatus = null,
    Object? logoutStatus = null,
    Object? isLoggedInStatus = null,
    Object? message = null,
  }) {
    return _then(_$AuthStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      logoutStatus: null == logoutStatus
          ? _value.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      isLoggedInStatus: null == isLoggedInStatus
          ? _value.isLoggedInStatus
          : isLoggedInStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.user,
      this.loginStatus = ApiStatus.initial,
      this.registerStatus = ApiStatus.initial,
      this.logoutStatus = ApiStatus.initial,
      this.isLoggedInStatus = ApiStatus.initial,
      this.message = ''});

  @override
  final User? user;
  @override
  @JsonKey()
  final ApiStatus loginStatus;
  @override
  @JsonKey()
  final ApiStatus registerStatus;
  @override
  @JsonKey()
  final ApiStatus logoutStatus;
  @override
  @JsonKey()
  final ApiStatus isLoggedInStatus;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthState(user: $user, loginStatus: $loginStatus, registerStatus: $registerStatus, logoutStatus: $logoutStatus, isLoggedInStatus: $isLoggedInStatus, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.logoutStatus, logoutStatus) ||
                other.logoutStatus == logoutStatus) &&
            (identical(other.isLoggedInStatus, isLoggedInStatus) ||
                other.isLoggedInStatus == isLoggedInStatus) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, loginStatus,
      registerStatus, logoutStatus, isLoggedInStatus, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final User? user,
      final ApiStatus loginStatus,
      final ApiStatus registerStatus,
      final ApiStatus logoutStatus,
      final ApiStatus isLoggedInStatus,
      final String message}) = _$AuthStateImpl;

  @override
  User? get user;
  @override
  ApiStatus get loginStatus;
  @override
  ApiStatus get registerStatus;
  @override
  ApiStatus get logoutStatus;
  @override
  ApiStatus get isLoggedInStatus;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
