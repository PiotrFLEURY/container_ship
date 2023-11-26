import 'package:container_ship/presentation/ui/layout/layout.dart';
import 'package:flutter/material.dart';

class ContainerShip extends StatelessWidget {
  const ContainerShip({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ContainerShipLayout(),
      ),
    );
  }
}
