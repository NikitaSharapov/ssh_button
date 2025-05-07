import 'package:ssh_button/features/command/domain/entities/command_entity.dart';
import 'package:ssh_button/features/command/domain/repositories/command_repository.dart';
import 'package:ssh_button/infrastructure/database/dao/command_dao/command_dao.dart';
import 'package:ssh_button/infrastructure/dto/command_dto.dart';
import 'package:ssh_button/infrastructure/dto/ssh_dto.dart';
import 'package:ssh_button/infrastructure/services/crypt_service.dart';
import 'package:ssh_button/infrastructure/services/ssh_service/ssh_service.dart';

class CommandRepositoryImpl implements CommandRepository {
  final CommandDao _commandDao;
  final SshService _sshService;

  CommandRepositoryImpl({
    required CommandDao commandDao,
    required SshService sshService,
  }) : _commandDao = commandDao,
       _sshService = sshService;

  @override
  Future<void> create({required Command command}) async {
    await _commandDao.create(
      dto: CommandDto(
        id: command.id,
        title: command.title,
        description: command.description,
        host: command.host,
        port: command.port,
        username: command.username,
        sudo: command.sudo,
        password: command.password,
        value: command.value,
      ),
    );
  }

  @override
  Future<void> delete({required String id}) async {
    await _commandDao.delete(id: id);
  }

  @override
  Future<Command?> read({required String id}) async {
    final commandDto = await _commandDao.read(id: id);
    if (commandDto != null) {
      return Command(
        id: commandDto.id,
        title: commandDto.title,
        description: commandDto.description,
        host: commandDto.host,
        port: commandDto.port,
        username: commandDto.username,
        sudo: commandDto.sudo,
        password: commandDto.password,
        value: commandDto.value,
      );
    }
    return null;
  }

  @override
  Future<List<Command>> readAll() async {
    final commandDtos = await _commandDao.readAll();
    return commandDtos
        .map(
          (commandDto) => Command(
            id: commandDto.id,
            title: commandDto.title,
            description: commandDto.description,
            host: commandDto.host,
            port: commandDto.port,
            username: commandDto.username,
            sudo: commandDto.sudo,
            password: commandDto.password,
            value: commandDto.value,
          ),
        )
        .toList();
  }

  @override
  Future<void> update({required Command command}) async {
    await _commandDao.update(
      dto: CommandDto(
        id: command.id,
        title: command.title,
        description: command.description,
        host: command.host,
        port: command.port,
        username: command.username,
        sudo: command.sudo,
        password: command.password,
        value: command.value,
      ),
    );
  }

  @override
  Stream<List<Command>> watch() => _commandDao.watch().map(
    (commandDtos) =>
        commandDtos
            .map(
              (commandDto) => Command(
                id: commandDto.id,
                title: commandDto.title,
                description: commandDto.description,
                host: commandDto.host,
                port: commandDto.port,
                username: commandDto.username,
                sudo: commandDto.sudo,
                password: commandDto.password,
                value: commandDto.value,
              ),
            )
            .toList(),
  );

  @override
  Future<String> execute({required Command command}) async {
    return await _sshService.executeCommand(
      dto: ExecuteSshCommandDto(
        host: command.host,
        port: command.port,
        username: command.username,
        command: command.value,
        password: await CryptService.decryptData(data: command.password),
        sudo: command.sudo,
      ),
    );
  }
}
