import 'package:container_ship/container_ship.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ContainerShip(),
    ),
  );
}
