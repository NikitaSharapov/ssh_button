import 'dart:convert';

import 'package:async/async.dart';
import 'package:dartssh2/dartssh2.dart';
import 'package:ssh_button/infrastructure/dto/ssh_dto.dart';
import 'package:ssh_button/infrastructure/services/ssh_service/ssh_service.dart';

class Dartssh2SshService implements SshService {
  @override
  Future<String> executeCommand({required ExecuteSshCommandDto dto}) async {
    final client = SSHClient(
      await SSHSocket.connect(dto.host, dto.port),
      username: dto.username,
      onPasswordRequest: () => dto.password,
    );

    if (dto.sudo) {
      final session = await client.execute(
        'echo ${dto.password} | sudo -S ${dto.command}',
      );

      await session.done;

      final stdout = await session.stdout.firstOrNull;
      if (stdout != null) {
        return utf8.decode(stdout).replaceAll('\n', '');
      }

      final stderr =
          await session.stderr
              .where(
                (data) =>
                    utf8
                        .decode(data)
                        .replaceAll('\n', '')
                        .replaceAll(' ', '')
                        .isNotEmpty,
              )
              .last;
      return utf8.decode(stderr);
    }

    final session = await client.execute(dto.command);
    await session.done;

    final stdout = await session.stdout.firstOrNull;
    if (stdout != null) {
      return utf8.decode(stdout).replaceAll('\n', '');
    }

    final stderr =
        await session.stderr
            .where(
              (data) =>
                  utf8
                      .decode(data)
                      .replaceAll('\n', '')
                      .replaceAll(' ', '')
                      .isNotEmpty,
            )
            .last;
    return utf8.decode(stderr);
  }
}
