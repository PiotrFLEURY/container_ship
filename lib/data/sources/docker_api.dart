import 'package:container_ship/data/models/models.dart';
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

  // Create a new container
  // POST /containers/create
  // https://docs.docker.com/engine/api/v1.43/#operation/ContainerCreate
  @POST('/containers/create')
  Future<void> createContainer({
    @Header('content-type') String contentType = 'application/json',
    @Query('name') String? name,
    @Body() required DockerContainerCreationRequest body,
  });

  // Start a container
  // POST /containers/{id}/start
  // https://docs.docker.com/engine/api/v1.43/#operation/ContainerStart
  @POST('/containers/{id}/start')
  Future<void> startContainer(@Path('id') String id);

  // Remove a container
  // DELETE /containers/{id}
  // https://docs.docker.com/engine/api/v1.43/#operation/ContainerDelete
  @DELETE('/containers/{id}')
  Future<void> removeContainer(@Path('id') String id);

  // List images
  // GET /images/json
  // https://docs.docker.com/engine/api/v1.43/#operation/ImageList
  @GET('/images/json')
  Future<List<DockerImage>> getImages({
    @Query('all') bool all = true,
  });
}
