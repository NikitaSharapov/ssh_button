import 'package:freezed_annotation/freezed_annotation.dart';

part 'command_dto.freezed.dart';

@freezed
abstract class CommandDto with _$CommandDto {
  const factory CommandDto({
    required String id,
    required String title,
    required String? description,
    required String host,
    required int port,
    required String value,
    required String username,
    required bool sudo,
    required String password,
  }) = _CommandDto;
}
