import 'package:container_ship/presentation/state_notifiers/content_panel_notifier.dart';
import 'package:container_ship/presentation/ui/layout/layout.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_image_name_notifier.g.dart';

@riverpod
class SelectedImageNameNotifier extends _$SelectedImageNameNotifier {
  @override
  String build() => '';

  void select(String image) {
    ref.read(contentPanelNotifierProvider.notifier).selectMenu(
          ContainerShipMenu.menuCreate,
        );
    state = image;
  }
}
