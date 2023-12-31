import 'package:container_ship/presentation/ui/pages/container_creation_page.dart';
import 'package:container_ship/presentation/ui/pages/containers_page.dart';
import 'package:container_ship/presentation/ui/pages/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container ship',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ContainersPage(),
        '/create': (context) => const ContainerCreationPage(),
        '/search': (context) => const SearchPage(),
      },
    );
  }
}
