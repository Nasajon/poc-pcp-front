import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/pcp.dart';

class GrupoDeRecursoListPage extends StatefulWidget {
  const GrupoDeRecursoListPage({Key? key}) : super(key: key);

  @override
  State<GrupoDeRecursoListPage> createState() => _GrupoDeRecursoListPageState();
}

class _GrupoDeRecursoListPageState
    extends ViewState<GrupoDeRecursoListPage, GrupoDeRecursoListViewmodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(tr.pcp.gruposDeRecursos.list.title)),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 635),
            child: Padding(
              padding: EdgeInsets.all(Spacing.md.value),
              child: Column(children: [
                PcpSearchFormField(
                    controller: viewModel.pesquisaController,
                    hintText: tr.pcp.shared.searchHint),
                Spacing.lg.vertical,
                ViewModelBuilder<GrupoDeRecursoListViewmodel,
                        GrupoDeRecursoListState>(
                    viewModel: viewModel,
                    buildWhen: (previous, current) =>
                        previous.loading != current.loading ||
                        previous.gruposDeRecursos != current.gruposDeRecursos,
                    builder: ((context, state) {
                      if (state.loading) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (viewModel.pesquisaController.text.isEmpty) {
                        return _RecentList(viewmodel: viewModel, state: state);
                      }

                      if (state.gruposDeRecursos == null ||
                          state.gruposDeRecursos!.isEmpty) {
                        return Text(tr.pcp.shared.emptyList.search);
                      }

                      return _GrupoDeRecursoList(
                          viewmodel: viewModel,
                          gruposDeRecursos: state.gruposDeRecursos!);
                    })),
                Spacing.xl.vertical,
                Spacing.xl.vertical,
                ElevatedButton(
                    child: Text(tr.pcp.gruposDeRecursos.list.addItem),
                    onPressed: () async {
                      await Nav.pushNamed(PcpRouting.grupoDeRecursosCreate);

                      viewModel.getRecentList();
                    })
              ]),
            ),
          ),
        ));
  }
}

class _RecentList extends StatelessWidget {
  final GrupoDeRecursoListState state;
  final GrupoDeRecursoListViewmodel viewmodel;

  const _RecentList({Key? key, required this.state, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text(tr.pcp.gruposDeRecursos.list.lastTitle,
              style: TextStyle(
                  fontSize: AppFontSize.body1.value,
                  fontWeight: AppFontWeight.bold.value,
                  fontFamily: 'PT Sans Narrow'))
        ]),
        Spacing.md.vertical,
        state.recentGruposDeRecursos == null ||
                state.recentGruposDeRecursos!.isEmpty
            ? Text(tr.pcp.shared.emptyList.recent)
            : _GrupoDeRecursoList(
                viewmodel: viewmodel,
                gruposDeRecursos: state.recentGruposDeRecursos!)
      ],
    );
  }
}

class _GrupoDeRecursoList extends StatelessWidget {
  final List<GrupoDeRecurso> gruposDeRecursos;
  final GrupoDeRecursoListViewmodel viewmodel;

  const _GrupoDeRecursoList(
      {Key? key, required this.gruposDeRecursos, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: gruposDeRecursos
          .map((grupoDeRecurso) => _GrupoDeRecursoItem(
                viewmodel: viewmodel,
                grupoDeRecurso: grupoDeRecurso,
              ))
          .toList(),
    );
  }
}

class _GrupoDeRecursoItem extends StatelessWidget {
  final GrupoDeRecurso grupoDeRecurso;
  final GrupoDeRecursoListViewmodel viewmodel;

  const _GrupoDeRecursoItem(
      {Key? key, required this.grupoDeRecurso, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xFFDADADA)))),
      child: ListTile(
          title: Text(
            grupoDeRecurso.codigo,
            style: TextStyle(
              fontSize: AppFontSize.callout.value,
              fontWeight: AppFontWeight.bold.value,
              height: AppLineHeight.md.value,
            ),
          ),
          subtitle: Text(grupoDeRecurso.descricao,
              style: TextStyle(
                  fontSize: AppFontSize.caption.value,
                  height: AppLineHeight.sm.value,
                  color: context.colorPalette.base[400])),
          trailing: const Icon(Icons.chevron_right),
          shape: const Border(bottom: BorderSide(color: Color(0xFFDADADA))),
          onTap: () async {
            await Nav.pushNamed(
              '${PcpRouting.grupoDeRecursos}/${grupoDeRecurso.id}',
            );

            viewmodel.getRecentList();
          }),
    );
  }
}
