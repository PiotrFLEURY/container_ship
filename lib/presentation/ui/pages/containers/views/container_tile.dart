import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/presentation/ui/pages/containers/views/container_menu.dart';
import 'package:flutter/material.dart';

class ContainerTile extends StatelessWidget {
  const ContainerTile({
    super.key,
    required this.container,
    required this.seeLogs,
    required this.stopContainer,
    required this.startContainer,
    required this.removeContainer,
  });

  final DockerContainer container;
  final VoidCallback seeLogs;
  final VoidCallback stopContainer;
  final VoidCallback startContainer;
  final VoidCallback removeContainer;

  @override
  Widget build(BuildContext context) {
    bool containerIsRunning = container.state == 'running';
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(8.0),
        child: ListTile(
          title: Text(
            container.image,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(container.id),
          ),
          trailing: ContainerMenu(
            seeLogs: seeLogs,
            stopContainer: containerIsRunning ? stopContainer : null,
            startContainer: containerIsRunning ? null : startContainer,
            removeContainer: containerIsRunning ? null : removeContainer,
          ),
        ),
      ),
    );
  }
}
