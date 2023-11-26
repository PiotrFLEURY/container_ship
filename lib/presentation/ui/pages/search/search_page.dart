import 'package:container_ship/presentation/state_notifiers/image_search_result.dart';
import 'package:container_ship/presentation/state_notifiers/selected_image_name_notifier.dart';
import 'package:container_ship/presentation/ui/pages/search/views/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Widget buildSearchPage() => const SearchPage();

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(imageSearchResultProvider);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(imageSearchResultProvider.notifier).clearResults();
        },
        child: const Icon(Icons.close),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: SearchField(
                onSubmitted: (term) {
                  if (term.isNotEmpty) {
                    ref
                        .read(imageSearchResultProvider.notifier)
                        .searchImages(term);
                  }
                },
                onClear: () {
                  ref.read(imageSearchResultProvider.notifier).clearResults();
                },
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 48.0,
              right: 48,
              top: 24.0,
            ),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: searchResult.isEmpty ? 0.0 : 1.0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
                height: searchResult.isEmpty
                    ? 0.0
                    : MediaQuery.of(context).size.height * 0.8,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: searchResult.length,
                  itemBuilder: (context, index) {
                    final result = searchResult[index];
                    return Material(
                      child: InkWell(
                        onTap: () => _createContainer(
                          context,
                          ref,
                          result.name,
                        ),
                        child: ListTile(
                          title: Text(result.name),
                          subtitle: Text(result.description),
                          trailing: Text('${result.starCount}'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _createContainer(
    BuildContext context,
    WidgetRef ref,
    String name,
  ) {
    ref.read(imageSearchResultProvider.notifier).clearResults();

    ref.read(selectedImageNameNotifierProvider.notifier).select(name);
  }
}
