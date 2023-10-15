import 'package:container_ship/presentation/state/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageSearchPage extends ConsumerWidget {
  const ImageSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(imageSearchNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Docker Images'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search for Docker images',
              ),
              onSubmitted: (term) => _searchImages(term, ref),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResult.length,
              itemBuilder: (context, index) {
                final result = searchResult[index];
                return ListTile(
                  title: Text(result.name),
                  subtitle: Text(result.description),
                  trailing: Text('${result.starCount}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _searchImages(String term, WidgetRef ref) {
    if (term.isNotEmpty) {
      ref.read(imageSearchNotifierProvider.notifier).searchImages(term);
    }
  }
}
