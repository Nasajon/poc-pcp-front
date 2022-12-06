import 'dart:convert';

import 'package:flutter_core/flutter_core.dart';
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
      {@Query('tenant') int tenant = 1, @Query('search') String? search});

  @override
  @GET('/gruposderecursos/{id}')
  Future<GrupoDeRecursoModel> getGrupoDeRecurso(@Path() String id,
      {@Query('tenant') int tenant = 1});

  @override
  @POST('/gruposderecursos')
  Future<void> insertGrupoDeRecurso(@Body() GrupoDeRecursoModel grupoDeRecurso);

  @override
  @PUT('/gruposderecursos/{id}')
  Future<void> updateGrupoDeRecurso(
      @Path() String id, @Body() GrupoDeRecursoModel grupoDeRecurso);

  @override
  @GET('/recursos')
  Future<RecursoListModel> getRecursoList(
      {@Query('tenant') int tenant = 1,
      @Query('search') String? search,
      @Query('grupoderecurso') String? grupoDeRecurso});

  @override
  @GET('/recursos/{id}')
  Future<RecursoModel> getRecurso(@Path() String id,
      {@Query('tenant') int tenant = 1});

  @override
  @POST('/recursos')
  Future<void> insertRecurso(@Body() RecursoModel recurso);

  @override
  @PUT('/recursos/{id}')
  Future<void> updateRecurso(@Path() String id, @Body() RecursoModel recurso);
}

class ProducaoInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var queryParameters = options.queryParameters;
    var headers = options.headers;

    if (!headers.containsKey('Authorization')) {
      headers.addAll(
          {'Authorization': 'Bearer ${LoginSessionRepository.accessToken}'});
    }

    if (options.method == HttpMethod.GET) {
      if (!queryParameters.containsKey('tenant')) {}
    }

    return super.onRequest(options, handler);
  }

  @override
  void onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) {
    if (err.type == DioErrorType.response) {
      switch (err.response?.statusCode) {
        case 400:
          if (err.requestOptions.method == HttpMethod.GET) {
            var responseData = err.response?.data;
            if (responseData != null &&
                responseData.toString().contains('Missing parameter')) {}
          }
          break;
        case 401:
          if (LoginSessionRepository.accessToken != null) {}
          break;
        default:
      }
    }

    handler.next(err);
  }
}
