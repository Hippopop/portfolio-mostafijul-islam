import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_state_model.freezed.dart';

enum RootState {
  error,
  success,
  loading,
}

@freezed
class RootStateModel with _$RootStateModel {
  const factory RootStateModel({
    required RootState state,
  }) = _RootStateModel;
}
