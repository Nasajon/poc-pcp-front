import 'package:flutter/cupertino.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/pcp.dart';

class RecursoListViewmodel extends ViewModel<RecursoListState> {
  final IGetRecursoListUsecase _getRecursoListUsecase;
  final IGetRecursoRecentListUsecase _getRecursoRecentListUsecase;
  final TextEditingController pesquisaController = TextEditingController();

  RecursoListViewmodel(
      {required IGetRecursoListUsecase getRecursoListUsecase,
      required IGetRecursoRecentListUsecase getRecursoRecentListUsecase})
      : _getRecursoListUsecase = getRecursoListUsecase,
        _getRecursoRecentListUsecase = getRecursoRecentListUsecase,
        super(RecursoListState.initial());

  @override
  void initViewModel() {
    super.initViewModel();

    getRecentList();

    pesquisaController.addListener(() {
      if (pesquisaController.text.isNotEmpty) {
        getList();
      } else {
        emit(state.copyWith(recursos: null));
        getRecentList();
      }
    });
  }

  Future<void> getRecentList() async {
    emit(state.copyWith(loading: true));

    final recentList = await _getRecursoRecentListUsecase();

    emit(state.copyWith(recentRecursos: recentList, loading: false));
  }

  Future<void> getList() async {
    emit(state.copyWith(loading: true));

    final usecase =
        await _getRecursoListUsecase(search: pesquisaController.text);

    usecase.fold((l) => emit(state.copyWith(loading: false, recursos: null)),
        (list) => emit(state.copyWith(loading: false, recursos: list)));
  }
}
