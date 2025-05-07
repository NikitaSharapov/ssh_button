import 'package:freezed_annotation/freezed_annotation.dart';

part 'ssh_dto.freezed.dart';

@freezed
abstract class ExecuteSshCommandDto with _$ExecuteSshCommandDto {
  const factory ExecuteSshCommandDto({
    required String host,
    required int port,
    required String username,
    required String password,
    required String command,
    required bool sudo,
  }) = _ExecuteSshCommandDto;
}
