import 'package:container_ship/domain/usecases/usecases.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogPage extends ConsumerWidget {
  const LogPage({
    super.key,
    required this.containerId,
  });

  final String containerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logsProvider = ref.watch(getContainerLogsProvider(containerId));
    return logsProvider.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => const Center(child: Text('Error loading logs')),
      data: (logs) => Scaffold(
        appBar: AppBar(
          title: const Text('Logs'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            reverse: true,
            child: SelectableText(
              logs,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
