import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/domain/usecases/usecases.dart';
import 'package:container_ship/presentation/ui/pages/log_page.dart';
import 'package:container_ship/presentation/ui/views/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainersPage extends ConsumerWidget {
  const ContainersPage({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    // Scrollable list of running Docker containers shown in Material cards
    // Title is the name of the container followed by the container ID
    // Subtitle is the image name
    // Leading is the container status
    // Trailing is the container stats (CPU, memory)

    final containers = ref.watch(listContainersProvider);

    return containers.when(
      data: (containerList) {
        return ContainerListPageContent(
          containers: containerList,
        );
      },
      error: (_, __) => const Center(child: Text('Error loading containers')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class ContainerListPageContent extends ConsumerStatefulWidget {
  const ContainerListPageContent({
    Key? key,
    required this.containers,
  }) : super(key: key);

  final List<DockerContainer> containers;

  @override
  ConsumerState<ContainerListPageContent> createState() =>
      _ContainerListPageContentState();
}

class _ContainerListPageContentState
    extends ConsumerState<ContainerListPageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Containers'),
        ),
        actions: [
          // refresh
          IconButton(
            onPressed: () => ref.refresh(listContainersProvider.future),
            icon: const Icon(Icons.refresh),
          ),
          // search
          IconButton(
            onPressed: _search,
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createContainer,
        child: const Icon(Icons.add),
      ),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: widget.containers.length,
            itemBuilder: (context, index) {
              final container = widget.containers[index];
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
                              onTap: () =>
                                  ref.read(stopContainerProvider(container.id)),
                              child: const Icon(
                                Icons.stop_circle_rounded,
                                color: Colors.red,
                                size: 32,
                              ),
                            )
                          : InkWell(
                              onTap: () => ref.read(
                                startContainerProvider(container.id),
                              ),
                              child: const Icon(
                                Icons.play_circle_rounded,
                                color: Colors.green,
                                size: 32,
                              ),
                            ),
                      InkWell(
                        onTap: () => ref.read(
                          removeContainerProvider(container.id),
                        ),
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
                    color: container.state == 'running'
                        ? Colors.green
                        : Colors.red,
                  ),
                  trailing: InkWell(
                    onTap: () async {
                      //final stats =
                      //ref.read(containerStatsProvider(container.id));
                      // TODO use stats
                    },
                    child: Text(
                      containerStatsSummary(container.stats),
                    ),
                  ),
                ),
              );
            },
          ),
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
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LogPage(
          containerId: id,
        ),
      ),
    );
  }

  void _createContainer() {
    Navigator.of(context).pushNamed('/create');
  }

  Future<void> _search() async {
    final imageName = await Navigator.of(context).pushNamed('/search');
    if (mounted && imageName != null) {
      Navigator.of(context).pushNamed('/create', arguments: imageName);
    }
  }
}
