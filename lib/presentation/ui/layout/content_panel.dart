import 'package:container_ship/presentation/state_notifiers/content_panel_notifier.dart';
import 'package:container_ship/presentation/state_notifiers/selected_image_name_notifier.dart';
import 'package:container_ship/presentation/ui/layout/layout.dart';
import 'package:container_ship/presentation/ui/pages/pages.dart';
import 'package:container_ship/presentation/ui/pages/pulled_images_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContentPanel extends ConsumerWidget {
  const ContentPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageName = ref.watch(selectedImageNameNotifierProvider);

    final selectedMenuIndex = ref.watch(contentPanelNotifierProvider);
    switch (selectedMenuIndex) {
      case ContainerShipMenu.menuHome:
        return const ContainersPage();
      case ContainerShipMenu.menuSearch:
        return const SearchPage();
      case ContainerShipMenu.menuCreate:
        return ContainerCreationPage(
          imageName: imageName,
        );
      case ContainerShipMenu.menuRunningContainers:
        return const ContainersPage();
      case ContainerShipMenu.menuPulledImages:
        return const PulledImagesPage();
      default:
        return const Center(child: Text('No page selected'));
    }
  }
}
