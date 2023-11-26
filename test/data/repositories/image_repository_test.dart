import 'package:container_ship/data/models/models.dart';
import 'package:container_ship/data/repositories/repositories.dart';
import 'package:container_ship/data/sources/docker_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDockerApi extends Mock implements DockerApi {}

class FakeDockerImageSearchResult extends Fake
    implements DockerImageSearchResult {}

void main() {
  late ImageRepositoryImpl repository;
  late MockDockerApi mockDockerApi;

  setUp(() {
    registerFallbackValue(FakeDockerImageSearchResult());
    mockDockerApi = MockDockerApi();
    repository = ImageRepositoryImpl(mockDockerApi);
  });

  group('getImages', () {
    final images = [
      const DockerImage(id: 'id', repoTags: ['name:tag']),
      const DockerImage(id: 'id2', repoTags: ['name2:tag2']),
    ];

    test('returns images from repository', () async {
      when(() => mockDockerApi.getImages(all: true))
          .thenAnswer((_) async => images);

      final result = await repository.getImages();

      expect(result.length, equals(images.length));
      expect(result[0].id, equals(images[0].id));
      expect(result[0].name, equals(images[0].repoTags![0].split(':')[0]));
      expect(result[0].tag, equals(images[0].repoTags![0].split(':')[1]));
      expect(result[1].id, equals(images[1].id));
      expect(result[1].name, equals(images[1].repoTags![0].split(':')[0]));
      expect(result[1].tag, equals(images[1].repoTags![0].split(':')[1]));
    });

    test('throws exception when repository throws', () async {
      when(() => mockDockerApi.getImages()).thenThrow(Exception());

      expect(() => repository.getImages(), throwsException);
    });
  });

  group('searchImages', () {
    const term = 'search term';
    final results = [
      const DockerImageSearchResult(
        description: 'description',
        isOfficial: true,
        isAutomated: true,
        name: 'name',
        starCount: 1,
      ),
      const DockerImageSearchResult(
        description: 'description2',
        isOfficial: false,
        isAutomated: false,
        name: 'name2',
        starCount: 2,
      ),
    ];

    test('returns search results from repository', () async {
      when(() => mockDockerApi.searchImages(term: term)).thenAnswer(
        (_) async => results,
      );

      final result = await repository.searchImages(term);

      expect(result.length, equals(results.length));
      expect(result[0].description, equals(results[0].description));
      expect(result[0].isOfficial, equals(results[0].isOfficial));
      expect(result[0].isAutomated, equals(results[0].isAutomated));
      expect(result[0].name, equals(results[0].name));
      expect(result[0].starCount, equals(results[0].starCount));
      expect(result[1].description, equals(results[1].description));
      expect(result[1].isOfficial, equals(results[1].isOfficial));
      expect(result[1].isAutomated, equals(results[1].isAutomated));
      expect(result[1].name, equals(results[1].name));
      expect(result[1].starCount, equals(results[1].starCount));
    });

    test('throws exception when repository throws', () async {
      when(() => mockDockerApi.searchImages(term: term)).thenThrow(Exception());

      expect(() => repository.searchImages(term), throwsException);
    });
  });

  group('pullImage', () {
    const name = 'image name';

    test('calls repository with correct name', () {
      when(() => mockDockerApi.pullImage(fromImage: name, tag: 'latest'))
          .thenAnswer((_) async => {});

      repository.pullImage(name);

      verify(() => mockDockerApi.pullImage(fromImage: name, tag: 'latest'));
    });
  });
}
