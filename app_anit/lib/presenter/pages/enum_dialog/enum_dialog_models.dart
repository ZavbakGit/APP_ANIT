import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'enum_dialog_models.freezed.dart';

@freezed
class EnumDialogState with _$EnumDialogState {
  const EnumDialogState._();

  const factory EnumDialogState.data({
    required final List<RefEnum> list,
  }) = _StData;

  const factory EnumDialogState.empty() = _StEmpty;
  const factory EnumDialogState.error({
    required String message,
  }) = _StError;
}

@freezed
class EnumDialogEvent with _$EnumDialogEvent {
  const factory EnumDialogEvent.init() = EvInit;
  const factory EnumDialogEvent.load() = EvLoad;
  const factory EnumDialogEvent.pressedItem(RefEnum item) = EvPressedEnum;
}

@freezed
class EnumDialogSR with _$EnumDialogSR {
  const factory EnumDialogSR.exit(RefEnum? refCatalog) = _SrExit;
}
