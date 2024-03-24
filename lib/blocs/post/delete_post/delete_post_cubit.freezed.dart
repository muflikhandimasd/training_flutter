// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeletePostState {
  ApiStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeletePostStateCopyWith<DeletePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletePostStateCopyWith<$Res> {
  factory $DeletePostStateCopyWith(
          DeletePostState value, $Res Function(DeletePostState) then) =
      _$DeletePostStateCopyWithImpl<$Res, DeletePostState>;
  @useResult
  $Res call({ApiStatus status, String message});
}

/// @nodoc
class _$DeletePostStateCopyWithImpl<$Res, $Val extends DeletePostState>
    implements $DeletePostStateCopyWith<$Res> {
  _$DeletePostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeletePostStateImplCopyWith<$Res>
    implements $DeletePostStateCopyWith<$Res> {
  factory _$$DeletePostStateImplCopyWith(_$DeletePostStateImpl value,
          $Res Function(_$DeletePostStateImpl) then) =
      __$$DeletePostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, String message});
}

/// @nodoc
class __$$DeletePostStateImplCopyWithImpl<$Res>
    extends _$DeletePostStateCopyWithImpl<$Res, _$DeletePostStateImpl>
    implements _$$DeletePostStateImplCopyWith<$Res> {
  __$$DeletePostStateImplCopyWithImpl(
      _$DeletePostStateImpl _value, $Res Function(_$DeletePostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$DeletePostStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePostStateImpl implements _DeletePostState {
  const _$DeletePostStateImpl(
      {this.status = ApiStatus.initial, this.message = ''});

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DeletePostState(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePostStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePostStateImplCopyWith<_$DeletePostStateImpl> get copyWith =>
      __$$DeletePostStateImplCopyWithImpl<_$DeletePostStateImpl>(
          this, _$identity);
}

abstract class _DeletePostState implements DeletePostState {
  const factory _DeletePostState(
      {final ApiStatus status, final String message}) = _$DeletePostStateImpl;

  @override
  ApiStatus get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DeletePostStateImplCopyWith<_$DeletePostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
