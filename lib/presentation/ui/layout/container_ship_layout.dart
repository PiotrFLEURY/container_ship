import 'package:container_ship/presentation/ui/layout/layout.dart';
import 'package:flutter/material.dart';

class ContainerShipLayout extends StatelessWidget {
  const ContainerShipLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        HomeMenu(),
        Expanded(
          flex: 10,
          child: ContentPanel(),
        ),
      ],
    );
  }
}
