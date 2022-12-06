import 'package:flutter/cupertino.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/pcp.dart';

class RecursoFormViewmodel extends ViewModel<RecursoFormState> {
  final IGetRecursoUsecase _getRecursoUsecase;
  final ISaveRecursoUsecase _saveRecursoUsecase;
  final IGetGrupoDeRecursoListUsecase _getGrupoDeRecursoListUsecase;
  final IGetTipoDeRecursoListUsecase _getTipoDeRecursoListUsecase;

  TextEditingController codigoController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TextEditingController custoPorHoraController = TextEditingController();
  TipoDeRecurso? tipoDeRecurso;
  GrupoDeRecurso? grupoDeRecurso;

  RecursoFormViewmodel(
      {required IGetRecursoUsecase getRecursoUsecase,
      required ISaveRecursoUsecase saveRecursoUsecase,
      required IGetGrupoDeRecursoListUsecase getGrupoDeRecursoListUsecase,
      required IGetTipoDeRecursoListUsecase getTipoDeRecursoListUsecase,
      String? id})
      : _getRecursoUsecase = getRecursoUsecase,
        _saveRecursoUsecase = saveRecursoUsecase,
        _getGrupoDeRecursoListUsecase = getGrupoDeRecursoListUsecase,
        _getTipoDeRecursoListUsecase = getTipoDeRecursoListUsecase,
        super(RecursoFormState.initial(id: id));

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

    final usecase = await _getRecursoUsecase(state.id!);

    usecase.fold((l) => emit(state.copyWith(loading: false)), (recurso) {
      codigoController.text = recurso.codigo;
      descricaoController.text = recurso.descricao;
      custoPorHoraController.text = recurso.custoHora.toString();
      tipoDeRecurso = recurso.tipo;
      grupoDeRecurso = recurso.grupoDeRecurso;

      emit(state.copyWith(loading: false, recurso: recurso));
    });
  }

  Future<List<GrupoDeRecurso>> getGruposDeRecursos(String? search) async {
    final usecase = await _getGrupoDeRecursoListUsecase(search: search);

    return usecase.fold((l) => List.empty(), (r) => r);
  }

  Future<void> save(BuildContext context) async {
    Recurso recurso = Recurso(
        id: state.recurso?.id,
        codigo: codigoController.value.text,
        descricao: descricaoController.value.text,
        custoHora: custoPorHoraController.text.isNotEmpty
            ? double.parse(custoPorHoraController.text)
            : 0,
        tipo: tipoDeRecurso,
        grupoDeRecurso: grupoDeRecurso);

    final usecase = await _saveRecursoUsecase(recurso);

    usecase.fold((l) => null, (r) {
      Nav.pop();

      if (Nav.history.length == 1) {
        Nav.pushNamed(PcpRouting.recursos);
      }

      showSnackBar(
          context: context, text: tr.pcp.recursos.form.messages.success);
    });
  }
}
