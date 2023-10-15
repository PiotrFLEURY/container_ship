import 'package:container_ship/presentation/state/providers/providers.dart';
import 'package:container_ship/presentation/ui/pages/search/views/search_field.dart';
import 'package:container_ship/presentation/ui/views/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Widget buildSearchPage() => const SearchPage();

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(imageSearchNotifierProvider);

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  ref.read(imageSearchNotifierProvider.notifier).clearResults();
                  Navigator.of(context).pop();
                },
                icon: Material(
                  borderRadius: BorderRadius.circular(48.0),
                  elevation: 4.0,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.close),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: SearchField(
                  onSubmitted: (term) {
                    if (term.isNotEmpty) {
                      ref
                          .read(imageSearchNotifierProvider.notifier)
                          .searchImages(term);
                    }
                  },
                  onClear: () {
                    ref
                        .read(imageSearchNotifierProvider.notifier)
                        .clearResults();
                  },
                ),
              ),
            ),
            const Spacer(),
            AnimatedOpacity(
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
          ],
        ),
      ),
    );
  }

  void _createContainer(
    BuildContext context,
    WidgetRef ref,
    String name,
  ) {
    ref.read(imageSearchNotifierProvider.notifier).clearResults();
    Navigator.of(context).pop(name);
  }
}
