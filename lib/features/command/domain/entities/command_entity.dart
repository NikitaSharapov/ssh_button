import 'package:freezed_annotation/freezed_annotation.dart';

part 'command_entity.freezed.dart';

@freezed
abstract class Command with _$Command {
  const factory Command({
    required String id,
    required String title,
    required String? description,
    required String host,
     required String value,
    required int port,
    required String username,
    required bool sudo,
    required String password,
  }) = _Command;
}
