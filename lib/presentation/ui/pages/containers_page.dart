import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/presentation/state/providers/providers.dart';
import 'package:container_ship/presentation/ui/pages/log_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainersPage extends ConsumerStatefulWidget {
  const ContainersPage({super.key});

  @override
  ConsumerState<ContainersPage> createState() => _ContainersPageState();
}

class _ContainersPageState extends ConsumerState<ContainersPage> {
  @override
  void initState() {
    super.initState();
    ref.read(containerListNotifierProvider.notifier).getContainers();
  }

  @override
  Widget build(BuildContext context) {
    // Scrollable list of running Docker containers shown in Material cards
    // Title is the name of the container followed by the container ID
    // Subtitle is the image name
    // Leading is the container status
    // Trailing is the container stats (CPU, memory)

    final containers = ref.watch(containerListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Containers'),
        actions: [
          IconButton(
            onPressed: () => ref
                .read(containerListNotifierProvider.notifier)
                .getContainers(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createContainer,
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.onEdge,
        onRefresh: () =>
            ref.read(containerListNotifierProvider.notifier).getContainers(),
        child: ListView.builder(
          itemCount: containers.length,
          itemBuilder: (context, index) {
            final container = containers[index];
            return Card(
              child: ListTile(
                title: Text('${container.image} (${container.id})'),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(container.state),
                    InkWell(
                      onTap: () => seeLogs(context, ref, container.id),
                      child: const Icon(
                        Icons.text_snippet_rounded,
                        color: Colors.blue,
                      ),
                    ),
                    container.state == 'running'
                        ? InkWell(
                            onTap: () => ref
                                .read(containerListNotifierProvider.notifier)
                                .stopContainer(container.id),
                            child: const Icon(
                              Icons.stop_circle_rounded,
                              color: Colors.red,
                              size: 32,
                            ),
                          )
                        : InkWell(
                            onTap: () => ref
                                .read(containerListNotifierProvider.notifier)
                                .startContainer(container.id),
                            child: const Icon(
                              Icons.play_circle_rounded,
                              color: Colors.green,
                              size: 32,
                            ),
                          ),
                    InkWell(
                      onTap: () => ref
                          .read(containerListNotifierProvider.notifier)
                          .removeContainer(container.id),
                      child: const Icon(
                        Icons.delete_rounded,
                        color: Colors.red,
                        size: 32,
                      ),
                    ),
                  ],
                ),
                leading: Icon(
                  container.state == 'running'
                      ? Icons.play_arrow
                      : Icons.close_rounded,
                  color:
                      container.state == 'running' ? Colors.green : Colors.red,
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

  void _createContainer() {
    Navigator.of(context).pushNamed('/create');
  }
}
