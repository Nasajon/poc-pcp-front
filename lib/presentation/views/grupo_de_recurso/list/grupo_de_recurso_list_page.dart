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
        appBar: PcpAppBar(title: tr.pcp.gruposDeRecursos.list.title),
        body: Container(
          color: Colors.white,
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(children: [
                  PcpSearchFormField(
                      controller: viewModel.pesquisaController,
                      hintText: tr.pcp.shared.searchHint),
                  const SizedBox(height: 30),
                  ViewModelBuilder<GrupoDeRecursoListViewmodel,
                          GrupoDeRecursoListState>(
                      viewModel: viewModel,
                      buildWhen: (previous, current) =>
                          previous.loading != current.loading ||
                          previous.gruposDeRecursos != current.gruposDeRecursos,
                      builder: ((context, state) {
                        if (state.loading) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }

                        if (viewModel.pesquisaController.text.isEmpty) {
                          return RecentList(viewmodel: viewModel, state: state);
                        }

                        if (state.gruposDeRecursos == null ||
                            state.gruposDeRecursos!.isEmpty) {
                          return Text(tr.pcp.shared.emptyList.search);
                        }

                        return GrupoDeRecursoList(
                            viewmodel: viewModel,
                            gruposDeRecursos: state.gruposDeRecursos!);
                      })),
                  const SizedBox(height: 80),
                  PcpPrimaryButton(
                      text: tr.pcp.gruposDeRecursos.list.addItem,
                      onPressed: () async {
                        await Nav.pushNamed(PcpRouting.grupoDeRecursosCreate);

                        viewModel.getRecentList();
                      })
                ]),
              ),
            ),
          ),
        ));
  }
}

class RecentList extends StatelessWidget {
  final GrupoDeRecursoListState state;
  final GrupoDeRecursoListViewmodel viewmodel;

  const RecentList({Key? key, required this.state, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text(tr.pcp.gruposDeRecursos.list.lastTitle,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'PT Sans Narrow'))
        ]),
        const SizedBox(height: 24),
        state.recentGruposDeRecursos == null ||
                state.recentGruposDeRecursos!.isEmpty
            ? Text(tr.pcp.shared.emptyList.recent)
            : GrupoDeRecursoList(
                viewmodel: viewmodel,
                gruposDeRecursos: state.recentGruposDeRecursos!)
      ],
    );
  }
}

class GrupoDeRecursoList extends StatelessWidget {
  final List<GrupoDeRecurso> gruposDeRecursos;
  final GrupoDeRecursoListViewmodel viewmodel;

  const GrupoDeRecursoList(
      {Key? key, required this.gruposDeRecursos, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: gruposDeRecursos
          .map((grupoDeRecurso) => GrupoDeRecursoItem(
                viewmodel: viewmodel,
                grupoDeRecurso: grupoDeRecurso,
              ))
          .toList(),
    );
  }
}

class GrupoDeRecursoItem extends StatelessWidget {
  final GrupoDeRecurso grupoDeRecurso;
  final GrupoDeRecursoListViewmodel viewmodel;

  const GrupoDeRecursoItem(
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
            style: const TextStyle(
                fontSize: 14,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.w700,
                height: 1.4,
                color: Color(0xFF5A5A5A)),
          ),
          subtitle: Text(grupoDeRecurso.descricao,
              style: const TextStyle(
                  fontFamily: 'PT Sans',
                  fontSize: 12,
                  height: 1.2,
                  color: Color(0xFF999999))),
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
