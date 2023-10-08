import 'package:container_ship/data/models/docker_container.dart';
import 'package:container_ship/data/models/docker_container_stats.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'docker_api.g.dart';

@RestApi(baseUrl: 'http://localhost/')
abstract class DockerApi {
  factory DockerApi(Dio dio, {String baseUrl}) = _DockerApi;

  @GET('/containers/json')
  Future<List<DockerContainer>> getContainers({
    @Query('all') bool all = false,
  });

  @GET('/containers/{id}/stats')
  Future<DockerContainerStats> getContainerStats(
    @Path('id') String id, {
    @Query('stream') bool stream = false,
    @Query('one-shot') bool oneShot = false,
  });

  @POST('/containers/{id}/stop')
  Future<void> stopContainer(@Path('id') String id);

  @GET('/containers/{id}/logs')
  Future<String> getContainerLogs(
    @Path('id') String id, {
    @Query('stdout') bool stdout = true,
    @Query('stderr') bool stderr = true,
    @Query('follow') bool follow = false,
    @Query('tail') String tail = 'all',
  });
}
