import 'dart:async';
import 'dart:io';

import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkitConfiguration(
      defaultDevices: const [
        Device.phone,
      ],
      fileNameFactory: (name) => 'goldens/$name.png',
      skipGoldenAssertion: () => !Platform.isLinux,
      enableRealShadows: true,
    ),
  );
}
