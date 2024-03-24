part of 'delete_post_cubit.dart';

@freezed
class DeletePostState with _$DeletePostState {
  const factory DeletePostState(
    {
    @Default(ApiStatus.initial) ApiStatus status,
    @Default('') String message,}
  ) = _DeletePostState;
}

