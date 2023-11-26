import 'package:container_ship/container_ship.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('main test', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: ContainerShip(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(ContainerShip), findsOneWidget);
  });
}
