import 'package:container_ship/data/repositories/image_repository.dart';
import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/domain/repositories/container_repository.dart';
import 'package:container_ship/data/repositories/container_repository.dart';
import 'package:container_ship/domain/repositories/image_repository.dart';
import 'package:container_ship/presentation/state/notifiers/container_list_notifier.dart';
import 'package:container_ship/presentation/state/notifiers/container_logs_notifier.dart';
import 'package:container_ship/presentation/state/notifiers/image_list_notifier.dart';
import 'package:container_ship/presentation/state/notifiers/image_search_notifier.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:container_ship/data/sources/docker_api.dart';

// Data

final dioProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: 'http://localhost/',
    ),
  );
});

final dockerApiProvider = Provider<DockerApi>((ref) {
  return DockerApi(ref.read(dioProvider));
});

// Repsitories

final containerRepository = Provider<ContainerRepository>((ref) {
  return ContainerRepositoryImpl(ref.read(dockerApiProvider));
});

final imageRepository = Provider<ImageRepository>((ref) {
  return ImageRepositoryImpl(ref.read(dockerApiProvider));
});

// Notifiers

final containerListNotifierProvider =
    StateNotifierProvider<ContainerListNotifier, List<DockerContainer>>(
  (ref) {
    return ContainerListNotifier(ref.read(containerRepository));
  },
);

final containerLogsNotifierProvider =
    StateNotifierProvider<ContainerLogsNotifier, String>(
  (ref) {
    return ContainerLogsNotifier(ref.read(containerRepository));
  },
);

final imageListNotifierProvider =
    StateNotifierProvider<ImageListNotifier, List<DockerImage>>(
  (ref) {
    return ImageListNotifier(ref.read(imageRepository));
  },
);

final imageSearchNotifierProvider =
    StateNotifierProvider<ImageSearchNotifier, List<DockerImageSearchResult>>(
  (ref) {
    return ImageSearchNotifier(ref.read(imageRepository));
  },
);
