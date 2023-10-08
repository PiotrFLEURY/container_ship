import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/presentation/state/providers/providers.dart';
import 'package:container_ship/presentation/ui/pages/log_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainersPage extends ConsumerWidget {
  const ContainersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Scrollable list of running Docker containers shown in Material cards
    // Title is the name of the container followed by the container ID
    // Subtitle is the image name
    // Leading is the container status
    // Trailing is the container stats (CPU, memory)

    final containers = ref.watch(containerListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Containers'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(containerListNotifierProvider.notifier).getContainers();
        },
        child: const Icon(Icons.refresh),
      ),
      body: ListView.builder(
        itemCount: containers.length,
        itemBuilder: (context, index) {
          final container = containers[index];
          return Card(
            child: ListTile(
              title: Text('${container.image} (${container.id})'),
              subtitle: Row(
                children: [
                  Text(container.state),
                  const Spacer(),
                  InkWell(
                    onTap: () => seeLogs(context, ref, container.id),
                    child: const Icon(
                      Icons.text_snippet_rounded,
                      color: Colors.blue,
                    ),
                  ),
                  if (container.state == 'running')
                    InkWell(
                      onTap: () => ref
                          .read(containerListNotifierProvider.notifier)
                          .stopContainer(container.id),
                      child: const Icon(
                        Icons.stop_circle_rounded,
                        color: Colors.red,
                      ),
                    ),
                ],
              ),
              leading: Icon(
                container.state == 'running'
                    ? Icons.play_arrow
                    : Icons.close_rounded,
                color: container.state == 'running' ? Colors.green : Colors.red,
              ),
              trailing: InkWell(
                onTap: () => ref
                    .read(containerListNotifierProvider.notifier)
                    .getContainerStats(container.id),
                child: Text(
                  containerStatsSummary(container.stats),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String containerStatsSummary(DockerContainerStats? stats) {
    if (stats == null) {
      return '';
    }
    return 'CPU: ${stats.cpuStats.cpuUsage.totalUsage} '
        'Memory: ${stats.memoryStats.usage}';
  }

  void seeLogs(
    BuildContext context,
    WidgetRef ref,
    String id,
  ) {
    ref.read(containerLogsNotifierProvider.notifier).getContainerLogs(id);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LogPage(),
      ),
    );
  }
}
