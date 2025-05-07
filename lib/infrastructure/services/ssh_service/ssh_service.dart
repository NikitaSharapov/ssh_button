import 'package:ssh_button/infrastructure/dto/ssh_dto.dart';

abstract interface class SshService {
  Future<String> executeCommand({required ExecuteSshCommandDto dto});
}
