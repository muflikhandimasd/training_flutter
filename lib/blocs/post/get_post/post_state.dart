part of 'post_cubit.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    @Default(<Post>[]) List<Post> posts,
    @Default(ApiStatus.initial) ApiStatus status,
    @Default('') String message,
  }) = _PostState;
}
