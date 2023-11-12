import 'package:flutter/material.dart';

enum ContainerMenuAction {
  logs,
  start,
  stop,
  remove,
}

class ContainerMenu extends StatelessWidget {
  const ContainerMenu({
    super.key,
    required this.seeLogs,
    required this.stopContainer,
    required this.startContainer,
    required this.removeContainer,
  });

  final VoidCallback seeLogs;
  final VoidCallback? stopContainer;
  final VoidCallback? startContainer;
  final VoidCallback? removeContainer;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (action) {
        switch (action) {
          case ContainerMenuAction.logs:
            seeLogs();
            break;
          case ContainerMenuAction.start:
            startContainer?.call();
            break;
          case ContainerMenuAction.stop:
            stopContainer?.call();
            break;
          case ContainerMenuAction.remove:
            removeContainer?.call();
            break;
        }
      },
      // see logs, start, stop remove
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: ContainerMenuAction.logs,
          child: Text('See logs'),
        ),
        PopupMenuItem(
          value: ContainerMenuAction.start,
          enabled: startContainer != null,
          child: const Text('Start'),
        ),
        PopupMenuItem(
          value: ContainerMenuAction.stop,
          enabled: stopContainer != null,
          child: const Text('Stop'),
        ),
        PopupMenuItem(
          value: ContainerMenuAction.remove,
          enabled: removeContainer != null,
          child: const Text('Remove'),
        ),
      ],
    );
  }
}
