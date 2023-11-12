import 'package:container_ship/presentation/state_notifiers/content_panel_notifier.dart';
import 'package:container_ship/presentation/ui/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeMenu extends ConsumerStatefulWidget {
  const HomeMenu({super.key});

  @override
  ConsumerState<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends ConsumerState<HomeMenu> {
  bool collapsed = false;

  void toggleCollapsed() {
    setState(() {
      collapsed = !collapsed;
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedMenuIndex = ref.watch(contentPanelNotifierProvider);
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!collapsed) const AppBanner(),
            MenuEntry(
              icon: Icons.home_outlined,
              label: 'Home',
              selected: selectedMenuIndex == ContainerShipMenu.menuHome,
              collapsed: collapsed,
              onTap: () =>
                  ref.read(contentPanelNotifierProvider.notifier).selectMenu(
                        ContainerShipMenu.menuHome,
                      ),
            ),
            MenuEntry(
              icon: Icons.search_outlined,
              label: 'Search',
              selected: selectedMenuIndex == ContainerShipMenu.menuSearch,
              collapsed: collapsed,
              onTap: () =>
                  ref.read(contentPanelNotifierProvider.notifier).selectMenu(
                        ContainerShipMenu.menuSearch,
                      ),
            ),
            MenuEntry(
              icon: Icons.add_circle_outline,
              label: 'Create',
              selected: selectedMenuIndex == ContainerShipMenu.menuCreate,
              collapsed: collapsed,
              onTap: () =>
                  ref.read(contentPanelNotifierProvider.notifier).selectMenu(
                        ContainerShipMenu.menuCreate,
                      ),
            ),
            MenuEntry(
              icon: Icons.run_circle_outlined,
              label: 'Running containers',
              selected:
                  selectedMenuIndex == ContainerShipMenu.menuRunningContainers,
              collapsed: collapsed,
              onTap: () =>
                  ref.read(contentPanelNotifierProvider.notifier).selectMenu(
                        ContainerShipMenu.menuRunningContainers,
                      ),
            ),
            MenuEntry(
              icon: Icons.image_outlined,
              label: 'Pulled images',
              selected: selectedMenuIndex == ContainerShipMenu.menuPulledImages,
              collapsed: collapsed,
              onTap: () =>
                  ref.read(contentPanelNotifierProvider.notifier).selectMenu(
                        ContainerShipMenu.menuPulledImages,
                      ),
            ),
            const Spacer(),
            IconButton(
              onPressed: toggleCollapsed,
              icon: Icon(
                collapsed
                    ? Icons.keyboard_double_arrow_right
                    : Icons.keyboard_double_arrow_left,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
