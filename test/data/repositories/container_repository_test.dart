import 'package:container_ship/data/models/models.dart';
import 'package:container_ship/data/sources/docker_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:container_ship/data/repositories/container_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockDockerApi extends Mock implements DockerApi {}

class FakeContainerCreationRequest extends Fake
    implements DockerContainerCreationRequest {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeContainerCreationRequest());
  });

  group('ContainerRepositoryImpl', () {
    late ContainerRepositoryImpl containerRepository;
    late DockerApi dockerApi;

    setUp(() {
      dockerApi = MockDockerApi();
      containerRepository = ContainerRepositoryImpl(
        dockerApi,
      );
    });

    group('get containers', () {
      test('empty list', () async {
        // GIVEN
        when(() => dockerApi.getContainers(all: true))
            .thenAnswer((_) async => []);

        // WHEN
        final containers = await containerRepository.getContainers();

        // THEN
        expect(containers, []);
      });

      test('non-empty list', () async {
        // GIVEN
        const container = DockerContainer(
          id: 'id',
          image: 'image',
          state: 'state',
        );
        const containerList = [container];
        when(() => dockerApi.getContainers(all: true))
            .thenAnswer((_) async => containerList);

        // WHEN
        final containers = await containerRepository.getContainers();

        // THEN
        expect(containers.isNotEmpty, true);
        expect(containers.first.id, container.id);
        expect(containers.first.image, container.image);
        expect(containers.first.state, container.state);
      });
    });

    group('getContainerStats', () {
      test('returns DockerContainerStats', () async {
        // GIVEN
        const id = 'id';
        const cpuUsage = CpuUsage(
          totalUsage: 1,
          percpuUsage: [1],
        );
        const cpuStats = CpuStats(
          cpuUsage: cpuUsage,
          systemCpuUsage: 1,
        );
        const memoryStats = MemoryStats(
          usage: 1,
          maxUsage: 1,
          limit: 1,
        );
        const containerStats = DockerContainerStats(
          cpuStats: CpuStats(
            cpuUsage: cpuUsage,
            systemCpuUsage: 1,
          ),
          memoryStats: MemoryStats(
            usage: 1,
            maxUsage: 1,
            limit: 1,
          ),
        );
        when(() => dockerApi.getContainerStats(id))
            .thenAnswer((_) async => containerStats);

        // WHEN
        final stats = await containerRepository.getContainerStats(id);

        // THEN
        expect(stats.cpuStats.cpuUsage.totalUsage, cpuUsage.totalUsage);
        expect(stats.cpuStats.cpuUsage.percpuUsage, cpuUsage.percpuUsage);
        expect(stats.cpuStats.systemCpuUsage, cpuStats.systemCpuUsage);
        expect(stats.memoryStats.usage, memoryStats.usage);
        expect(stats.memoryStats.maxUsage, memoryStats.maxUsage);
        expect(stats.memoryStats.limit, memoryStats.limit);
      });
    });

    group('stopContainer', () {
      test('calls dockerApi.stopContainer', () async {
        // GIVEN
        const id = 'id';
        when(() => dockerApi.stopContainer(id)).thenAnswer((_) async {});

        // WHEN
        await containerRepository.stopContainer(id);

        // THEN
        verify(() => dockerApi.stopContainer(id));
      });
    });

    group('getContainerLogs', () {
      test('calls dockerApi.getContainerLogs', () async {
        // GIVEN
        const id = 'id';
        when(() => dockerApi.getContainerLogs(id)).thenAnswer((_) async => '');

        // WHEN
        await containerRepository.getContainerLogs(id);

        // THEN
        verify(() => dockerApi.getContainerLogs(id));
      });
    });

    group('createContainer', () {
      test('calls dockerApi.createContainer', () async {
        // GIVEN
        const name = 'name';
        const image = 'image';
        const volume = 'volume';
        const ports = [1];
        const environment = {'key': 'value'};
        when(
          () => dockerApi.createContainer(
            name: name,
            body: any(named: 'body'),
          ),
        ).thenAnswer((_) async {});

        // WHEN
        await containerRepository.createContainer(
          name: name,
          image: image,
          volume: volume,
          ports: ports,
          environment: environment,
        );

        // THEN
        final capturedBody = verify(
          () => dockerApi.createContainer(
            name: name,
            body: captureAny(named: 'body'),
          ),
        ).captured;
        expect(capturedBody.length, 1);
        final body = capturedBody.first as DockerContainerCreationRequest;
        expect(body.image, image);
        expect(body.volumes?.keys.first, volume);
        expect(body.ports?.keys.first, '${ports.first}/tcp');
        expect(
          body.environment?.first,
          '${environment.keys.first}=${environment.values.first}',
        );
      });
    });

    group('startContainer', () {
      test('calls dockerApi.startContainer', () async {
        // GIVEN
        const id = 'id';
        when(() => dockerApi.startContainer(id)).thenAnswer((_) async {});

        // WHEN
        await containerRepository.startContainer(id);

        // THEN
        verify(() => dockerApi.startContainer(id));
      });
    });

    group('removeContainer', () {
      test('calls dockerApi.removeContainer', () async {
        // GIVEN
        const id = 'id';
        when(() => dockerApi.removeContainer(id)).thenAnswer((_) async {});

        // WHEN
        await containerRepository.removeContainer(id);

        // THEN
        verify(() => dockerApi.removeContainer(id));
      });
    });
  });
}
