import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/pcp.dart';

part 'producao_datasource.g.dart';

abstract class IProducaoDatasource {
  Future<GrupoDeRecursoListModel> getGrupoDeRecursoList({String? search});
  Future<GrupoDeRecursoModel> getGrupoDeRecurso(String id);
  Future<void> insertGrupoDeRecurso(GrupoDeRecursoModel grupoDeRecurso);
  Future<void> updateGrupoDeRecurso(
      String id, GrupoDeRecursoModel grupoDeRecurso);

  Future<RecursoListModel> getRecursoList(
      {String? search, String? grupoDeRecurso});
  Future<RecursoModel> getRecurso(String id);
  Future<void> insertRecurso(RecursoModel recurso);
  Future<void> updateRecurso(String id, RecursoModel recurso);
}

@RestApi()
abstract class ProducaoDatasource implements IProducaoDatasource {
  factory ProducaoDatasource(Dio dio, {String baseUrl}) = _ProducaoDatasource;

  @override
  @GET('/gruposderecursos')
  Future<GrupoDeRecursoListModel> getGrupoDeRecursoList(
      {@Query('tenant') int tenant = 123, @Query('search') String? search});

  @override
  @GET('/gruposderecursos/{id}')
  Future<GrupoDeRecursoModel> getGrupoDeRecurso(@Path() String id,
      {@Query('tenant') int tenant = 123});

  @override
  @POST('/gruposderecursos')
  Future<void> insertGrupoDeRecurso(@Body() GrupoDeRecursoModel grupoDeRecurso);

  @override
  @PUT('/gruposderecursos/{id}')
  Future<void> updateGrupoDeRecurso(
      @Path() String id, @Body() GrupoDeRecursoModel grupoDeRecurso);

  @override
  @GET('/recurso')
  Future<RecursoListModel> getRecursoList(
      {@Query('tenant') int tenant = 123,
      @Query('search') String? search,
      @Query('grupoderecurso') String? grupoDeRecurso});

  @override
  @GET('/recurso/{id}')
  Future<RecursoModel> getRecurso(@Path() String id);

  @override
  @POST('/recurso')
  Future<RecursoModel> insertRecurso(@Body() RecursoModel recurso);

  @override
  @PUT('/recurso/{id}')
  Future<RecursoModel> updateRecurso(
      @Path() String id, @Body() RecursoModel recurso);
}
