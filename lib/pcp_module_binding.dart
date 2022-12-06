import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/pcp.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';

class PcpModuleBinding {
  static List<Bind> get binds => [
        ..._datasourceBinds,
        ..._repositoryBinds,
        ..._useCaseBinds,
        ..._viewModelBinds,
      ];

  static List<Bind> get _datasourceBinds => [
        Bind.lazySingleton<IProducaoDatasource>((i) => ProducaoDatasource(
            Dio()..interceptors.add(ProducaoInterceptor()),
            baseUrl: dotenv.get('PCP'))),
        Bind.lazySingleton<ILocalDatasource>((i) => LocalDatasource()),
      ];

  static List<Bind> get _repositoryBinds => [
        Bind.lazySingleton<IGrupoDeRecursoRepository>((i) =>
            GrupoDeRecursoRepository(
                datasource: i.get<IProducaoDatasource>(),
                localDatasource: i.get<ILocalDatasource>())),
        Bind.lazySingleton<IRecursoRepository>((i) => RecursoRepository(
            datasource: i.get<IProducaoDatasource>(),
            localDatasource: i.get<ILocalDatasource>()))
      ];

  static List<Bind> get _useCaseBinds => [
        Bind.lazySingleton<ISaveGrupoDeRecursoUsecase>((i) =>
            SaveGrupoDeRecursoUsecase(
                repository: i.get<IGrupoDeRecursoRepository>())),
        Bind.lazySingleton<IGetGrupoDeRecursoListUsecase>((i) =>
            GetGrupoDeRecursoListUsecase(
                repository: i.get<IGrupoDeRecursoRepository>())),
        Bind.lazySingleton<IGetGrupoDeRecursoUsecase>((i) =>
            GetGrupoDeRecursoUsecase(
                repository: i.get<IGrupoDeRecursoRepository>())),
        Bind.lazySingleton<IGetTipoDeRecursoListUsecase>(
            (i) => GetTipoDeRecursoListUsecase()),
        Bind.lazySingleton<IGetGrupoDeRecursoRecentListUsecase>((i) =>
            GetGrupoDeRecursoRecentListUsecase(
                repository: i.get<IGrupoDeRecursoRepository>())),
        Bind.lazySingleton<IGetRecursoListUsecase>((i) =>
            GetRecursoListUsecase(repository: i.get<IRecursoRepository>())),
        Bind.lazySingleton<IGetRecursoRecentListUsecase>((i) =>
            GetRecursoRecentListUsecase(
                repository: i.get<IRecursoRepository>())),
        Bind.lazySingleton<IGetRecursoUsecase>(
            (i) => GetRecursoUsecase(repository: i.get<IRecursoRepository>())),
        Bind.lazySingleton<ISaveRecursoUsecase>(
            (i) => SaveRecursoUsecase(repository: i.get<IRecursoRepository>()))
      ];

  static List<Bind> get _viewModelBinds => [
        Bind.lazySingleton<GrupoDeRecursoFormViewmodel>((i) {
          final id = Nav.args.params['id'] as String?;

          return GrupoDeRecursoFormViewmodel(
              getGrupoDeRecursoUsecase: i.get<IGetGrupoDeRecursoUsecase>(),
              saveGrupoDeRecursoUsecase: i.get<ISaveGrupoDeRecursoUsecase>(),
              getTipoDeRecursoListUsecase:
                  i.get<IGetTipoDeRecursoListUsecase>(),
              id: id);
        }),
        Bind.lazySingleton<GrupoDeRecursoListViewmodel>((i) =>
            GrupoDeRecursoListViewmodel(
                getGrupoDeRecursoListUsecase:
                    i.get<IGetGrupoDeRecursoListUsecase>(),
                getGrupoDeRecursoRecentListUsecase:
                    i.get<IGetGrupoDeRecursoRecentListUsecase>())),
        Bind.lazySingleton<RecursoListViewmodel>((i) => RecursoListViewmodel(
            getRecursoListUsecase: i.get<IGetRecursoListUsecase>(),
            getRecursoRecentListUsecase:
                i.get<IGetRecursoRecentListUsecase>())),
        Bind.lazySingleton((i) {
          final id = Nav.args.params['id'] as String?;

          return RecursoFormViewmodel(
              getRecursoUsecase: i.get<IGetRecursoUsecase>(),
              saveRecursoUsecase: i.get<ISaveRecursoUsecase>(),
              getGrupoDeRecursoListUsecase:
                  i.get<IGetGrupoDeRecursoListUsecase>(),
              getTipoDeRecursoListUsecase:
                  i.get<IGetTipoDeRecursoListUsecase>(),
              id: id);
        })
      ];
}
