import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/pcp.dart';
import 'package:pcp/presentation/widgets/pcp_snack_bar.dart';

class GrupoDeRecursoFormViewmodel extends ViewModel<GrupoDeRecursoFormState> {
  final IGetGrupoDeRecursoUsecase _getGrupoDeRecursoUsecase;
  final ISaveGrupoDeRecursoUsecase _saveGrupoDeRecursoUsecase;
  final IGetTipoDeRecursoListUsecase _getTipoDeRecursoListUsecase;

  TextEditingController codigoController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TipoDeRecurso? tipoDeRecurso;

  GrupoDeRecursoFormViewmodel(
      {required IGetGrupoDeRecursoUsecase getGrupoDeRecursoUsecase,
      required ISaveGrupoDeRecursoUsecase saveGrupoDeRecursoUsecase,
      required IGetTipoDeRecursoListUsecase getTipoDeRecursoListUsecase,
      String? id})
      : _getGrupoDeRecursoUsecase = getGrupoDeRecursoUsecase,
        _saveGrupoDeRecursoUsecase = saveGrupoDeRecursoUsecase,
        _getTipoDeRecursoListUsecase = getTipoDeRecursoListUsecase,
        super(GrupoDeRecursoFormState.initial(id: id));

  List<TipoDeRecurso> get tiposDeRecurso => _getTipoDeRecursoListUsecase();

  @override
  void initViewModel() {
    super.initViewModel();

    if (state.id != null) {
      getItem();
    }
  }

  Future<void> getItem() async {
    emit(state.copyWith(loading: true));

    final usecase = await _getGrupoDeRecursoUsecase(state.id!);

    usecase.fold((l) => emit(state.copyWith(loading: false)), (grupoDeRecurso) {
      codigoController.text = grupoDeRecurso.codigo;
      descricaoController.text = grupoDeRecurso.descricao;
      tipoDeRecurso = grupoDeRecurso.tipo;

      emit(state.copyWith(loading: false, grupoDeRecurso: grupoDeRecurso));
    });
  }

  Future<void> save(BuildContext context) async {
    GrupoDeRecurso grupoDeRecurso = GrupoDeRecurso(
        id: state.grupoDeRecurso?.id,
        codigo: codigoController.value.text,
        descricao: descricaoController.value.text,
        tipo: tipoDeRecurso!);

    final usecase = await _saveGrupoDeRecursoUsecase(grupoDeRecurso);

    usecase.fold((l) => null, (r) {
      Nav.pop();

      if (Nav.history.length == 1) {
        Nav.pushNamed(PcpRouting.grupoDeRecursos);
      }

      showSnackBar(
          context: context, text: tr.pcp.gruposDeRecursos.form.message.success);
    });
  }

  @override
  void dispose() {
    super.dispose();

    codigoController.dispose();
    descricaoController.dispose();
  }
}
