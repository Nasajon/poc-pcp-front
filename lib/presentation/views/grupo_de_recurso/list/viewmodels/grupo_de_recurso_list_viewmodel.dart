import 'package:flutter/cupertino.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/pcp.dart';

class GrupoDeRecursoListViewmodel extends ViewModel<GrupoDeRecursoListState> {
  final IGetGrupoDeRecursoListUsecase _getGrupoDeRecursoListUsecase;
  final IGetGrupoDeRecursoRecentListUsecase _getGrupoDeRecursoRecentListUsecase;
  final TextEditingController pesquisaController = TextEditingController();

  GrupoDeRecursoListViewmodel(
      {required IGetGrupoDeRecursoListUsecase getGrupoDeRecursoListUsecase,
      required IGetGrupoDeRecursoRecentListUsecase
          getGrupoDeRecursoRecentListUsecase})
      : _getGrupoDeRecursoListUsecase = getGrupoDeRecursoListUsecase,
        _getGrupoDeRecursoRecentListUsecase =
            getGrupoDeRecursoRecentListUsecase,
        super(GrupoDeRecursoListState.initial());

  @override
  void initViewModel() {
    super.initViewModel();

    getRecentList();

    pesquisaController.addListener(() {
      if (pesquisaController.text.isNotEmpty) {
        getList();
      } else {
        emit(state.copyWith(gruposDeRecursos: null));
      }
    });
  }

  Future<void> getRecentList() async {
    emit(state.copyWith(loading: true));

    final recentList = await _getGrupoDeRecursoRecentListUsecase();

    emit(state.copyWith(recentGruposDeRecursos: recentList, loading: false));
  }

  Future<void> getList() async {
    emit(state.copyWith(loading: true));

    final usecase =
        await _getGrupoDeRecursoListUsecase(search: pesquisaController.text);

    usecase.fold(
        (l) => emit(state.copyWith(loading: false, gruposDeRecursos: null)),
        (list) => emit(state.copyWith(loading: false, gruposDeRecursos: list)));
  }
}
