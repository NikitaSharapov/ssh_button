import 'package:flutter/material.dart';
import 'package:ssh_button/features/command/domain/entities/command_entity.dart';

class CommandCard extends StatelessWidget {
  final Command command;
  final void Function(Command command) onTap;
  final void Function(Command command) onLongPress;
  const CommandCard({
    super.key,
    required this.command,
    required this.onTap,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onLongPress: () {
          onLongPress(command);
        },
        onTap: () {
          onTap(command);
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 8,
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${command.host}:${command.port}'),
                  Builder(
                    builder: (context) {
                      if (command.sudo) {
                        return Text('sudo');
                      }
                      return SizedBox.shrink();
                    },
                  ),
                ],
              ),
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.terminal, size: 34),
              title: Text(command.title),
              subtitle: Text(command.value),
            ),
          ],
        ),
      ),
    );
  }
}
