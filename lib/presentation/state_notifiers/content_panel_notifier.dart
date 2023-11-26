import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'content_panel_notifier.g.dart';

@riverpod
class ContentPanelNotifier extends _$ContentPanelNotifier {
  @override
  int build() => 0;

  void selectMenu(int index) {
    state = index;
  }
}
