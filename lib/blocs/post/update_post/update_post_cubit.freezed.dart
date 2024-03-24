// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdatePostState {
  File? get thumbnail => throw _privateConstructorUsedError;
  ApiStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatePostStateCopyWith<UpdatePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePostStateCopyWith<$Res> {
  factory $UpdatePostStateCopyWith(
          UpdatePostState value, $Res Function(UpdatePostState) then) =
      _$UpdatePostStateCopyWithImpl<$Res, UpdatePostState>;
  @useResult
  $Res call({File? thumbnail, ApiStatus status, String message});
}

/// @nodoc
class _$UpdatePostStateCopyWithImpl<$Res, $Val extends UpdatePostState>
    implements $UpdatePostStateCopyWith<$Res> {
  _$UpdatePostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = freezed,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as File?,
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
abstract class _$$UpdatePostStateImplCopyWith<$Res>
    implements $UpdatePostStateCopyWith<$Res> {
  factory _$$UpdatePostStateImplCopyWith(_$UpdatePostStateImpl value,
          $Res Function(_$UpdatePostStateImpl) then) =
      __$$UpdatePostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File? thumbnail, ApiStatus status, String message});
}

/// @nodoc
class __$$UpdatePostStateImplCopyWithImpl<$Res>
    extends _$UpdatePostStateCopyWithImpl<$Res, _$UpdatePostStateImpl>
    implements _$$UpdatePostStateImplCopyWith<$Res> {
  __$$UpdatePostStateImplCopyWithImpl(
      _$UpdatePostStateImpl _value, $Res Function(_$UpdatePostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = freezed,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$UpdatePostStateImpl(
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as File?,
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

class _$UpdatePostStateImpl implements _UpdatePostState {
  const _$UpdatePostStateImpl(
      {this.thumbnail, this.status = ApiStatus.initial, this.message = ''});

  @override
  final File? thumbnail;
  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'UpdatePostState(thumbnail: $thumbnail, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePostStateImpl &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, thumbnail, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePostStateImplCopyWith<_$UpdatePostStateImpl> get copyWith =>
      __$$UpdatePostStateImplCopyWithImpl<_$UpdatePostStateImpl>(
          this, _$identity);
}

abstract class _UpdatePostState implements UpdatePostState {
  const factory _UpdatePostState(
      {final File? thumbnail,
      final ApiStatus status,
      final String message}) = _$UpdatePostStateImpl;

  @override
  File? get thumbnail;
  @override
  ApiStatus get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePostStateImplCopyWith<_$UpdatePostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
