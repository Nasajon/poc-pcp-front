import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/pcp.dart';

class PcpRouting {
  static const BasePath root = BasePath('/pcp');
  static const BasePath home = BasePath('/home', root);

  static const BasePath grupoDeRecursos = BasePath('/grupo-de-recursos', root);
  static const BasePath grupoDeRecursosCreate =
      BasePath('/grupo-de-recursos/new', root);
  static const BasePath grupoDeRecursosEdit =
      BasePath('/grupo-de-recursos/:id', root);

  static const BasePath recursos = BasePath('/recursos', root);
  static const BasePath recursosCreate = BasePath('/recursos/new', root);
  static const BasePath recursosEdit = BasePath('/recursos/:id', root);

  static List<ModularRoute> get routes => [
        ChildRoute(grupoDeRecursos.path,
            child: (_, args) => const GrupoDeRecursoListPage()),
        ChildRoute(grupoDeRecursosCreate.path,
            child: (_, args) => const GrupoDeRecursoFormPage()),
        ChildRoute(grupoDeRecursosEdit.path,
            child: (_, args) => const GrupoDeRecursoFormPage()),
        ChildRoute(recursos.path, child: (_, args) => const RecursoListPage()),
        ChildRoute(recursosCreate.path,
            child: (_, args) => const RecursoFormPage()),
        ChildRoute(recursosEdit.path,
            child: (_, args) => const RecursoFormPage())
      ];
}
