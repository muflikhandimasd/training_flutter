part of 'update_post_cubit.dart';

@freezed
class UpdatePostState with _$UpdatePostState {
  const factory UpdatePostState(
    {File? thumbnail,
    @Default(ApiStatus.initial) ApiStatus status,
    @Default('') String message,}
  ) = _UpdatePostState;
}

