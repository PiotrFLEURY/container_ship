import 'package:container_ship/presentation/state/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogPage extends ConsumerWidget {
  const LogPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logs = ref.watch(containerLogsNotifierProvider);
    return Scaffold(
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
    );
  }
}
