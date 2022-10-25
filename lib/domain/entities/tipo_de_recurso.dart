import 'package:flutter_dependencies/flutter_dependencies.dart';

part 'tipo_de_recurso.freezed.dart';

@freezed
class TipoDeRecurso with _$TipoDeRecurso {
  const factory TipoDeRecurso(
      {required String descricao, required String valor}) = _TipoDeRecurso;

  factory TipoDeRecurso.maoDeObra() =>
      const TipoDeRecurso(descricao: 'Mão de obra', valor: 'mao_de_obra');

  factory TipoDeRecurso.postoDeTrabalho() => const TipoDeRecurso(
      descricao: 'Posto de trabalho', valor: 'posto_de_trabalho');

  factory TipoDeRecurso.equipamento() =>
      const TipoDeRecurso(descricao: 'Equipamento', valor: 'equipamento');

  factory TipoDeRecurso.outros() =>
      const TipoDeRecurso(descricao: 'Outros', valor: 'outros');

  factory TipoDeRecurso.fromEntity(String tipoDeRecurso) {
    switch (tipoDeRecurso) {
      case 'mao_de_obra':
        return TipoDeRecurso.maoDeObra();
      case 'posto_de_trabalho':
        return TipoDeRecurso.postoDeTrabalho();
      case 'equipamento':
        return TipoDeRecurso.equipamento();
      default:
        return TipoDeRecurso.outros();
    }
  }
}
