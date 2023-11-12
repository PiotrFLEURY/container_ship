import 'package:container_ship/presentation/ui/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

main() {
  testGoldens('AppBanner', (tester) async {
    const widget = AppBanner();
    final builder = GoldenBuilder.column()..addScenario('Default', widget);
    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(200, 200),
    );
    await screenMatchesGolden(
      tester,
      'app_banner',
    );
  });
}
