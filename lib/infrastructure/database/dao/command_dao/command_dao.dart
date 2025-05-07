import 'package:ssh_button/infrastructure/database/dao/base_dao.dart';
import 'package:ssh_button/infrastructure/dto/command_dto.dart';

abstract interface class CommandDao implements BaseDao<String, CommandDto> {
  Stream<List<CommandDto>> watch();
}
