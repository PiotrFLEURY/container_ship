import 'package:container_ship/data/repositories/repositories.dart';
import 'package:container_ship/data/sources/docker_api.dart';
import 'package:container_ship/domain/repositories/repositories.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dependency_injection.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio(
    BaseOptions(
      baseUrl: const String.fromEnvironment(
        'DOCKER_HOST',
        defaultValue: 'http://localhost/',
      ),
    ),
  );
}

@riverpod
DockerApi dockerApi(DockerApiRef ref) {
  return DockerApi(ref.read(dioProvider));
}

// Repositories

@riverpod
ContainerRepository containerRepository(ContainerRepositoryRef ref) {
  return ContainerRepositoryImpl(ref.read(dockerApiProvider));
}

@riverpod
ImageRepository imageRepository(ImageRepositoryRef ref) {
  return ImageRepositoryImpl(ref.read(dockerApiProvider));
}
