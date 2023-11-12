import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/domain/usecases/usecases.dart';
import 'package:container_ship/presentation/state_notifiers/content_panel_notifier.dart';
import 'package:container_ship/presentation/ui/layout/layout.dart';
import 'package:container_ship/presentation/ui/pages/containers/views/container_tile.dart';
import 'package:container_ship/presentation/ui/pages/log_page.dart';
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

    final containersProvider = ref.watch(listContainersProvider);

    return containersProvider.when(
      data: ((List<DockerContainer>, List<DockerContainer>) containerList) {
        final (running, stopped) = containerList;
        return ContainerListPageContent(
          runningContainers: running,
          stoppedContainers: stopped,
        );
      },
      error: (_, __) => const Center(child: Text('Error loading containers')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class ContainerListPageContent extends ConsumerStatefulWidget {
  const ContainerListPageContent({
    super.key,
    required this.runningContainers,
    required this.stoppedContainers,
  });

  final List<DockerContainer> runningContainers;
  final List<DockerContainer> stoppedContainers;

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
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Running containers',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        actions: [
          // refresh
          IconButton(
            onPressed: () => ref.refresh(listContainersProvider.future),
            icon: const Icon(Icons.refresh),
            color: Colors.black,
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton.icon(
                  onPressed: () => _createContainer(ref),
                  icon: const Icon(Icons.add),
                  label: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0,
                    ),
                    child: Text(
                      'Create container',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    'Running containers: ${widget.runningContainers.length}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  ...widget.runningContainers.map(
                    (container) => ContainerTile(
                      container: container,
                      seeLogs: () => seeLogs(context, ref, container.id),
                      stopContainer: () => ref.read(
                        stopContainerProvider(container.id),
                      ),
                      startContainer: () => ref.read(
                        startContainerProvider(container.id),
                      ),
                      removeContainer: () => ref.read(
                        removeContainerProvider(container.id),
                      ),
                    ),
                  ),
                  const SizedBox(height: 64),
                  Text(
                    'Stopped containers: ${widget.stoppedContainers.length}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  ...widget.stoppedContainers.map(
                    (container) => ContainerTile(
                      container: container,
                      seeLogs: () => seeLogs(context, ref, container.id),
                      stopContainer: () => ref.read(
                        stopContainerProvider(container.id),
                      ),
                      startContainer: () => ref.read(
                        startContainerProvider(container.id),
                      ),
                      removeContainer: () => ref.read(
                        removeContainerProvider(container.id),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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

  void _createContainer(WidgetRef ref) {
    ref.read(contentPanelNotifierProvider.notifier).selectMenu(
          ContainerShipMenu.menuCreate,
        );
  }
}
