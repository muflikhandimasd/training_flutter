part of 'create_post_cubit.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState(
    {File? thumbnail,
    @Default(ApiStatus.initial) ApiStatus status,
    @Default('') String message,}
  ) = _CreatePostState;
}

