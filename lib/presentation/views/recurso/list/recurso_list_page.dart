import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/pcp.dart';

class RecursoListPage extends StatefulWidget {
  const RecursoListPage({Key? key}) : super(key: key);

  @override
  State<RecursoListPage> createState() => _RecursoListPageState();
}

class _RecursoListPageState
    extends ViewState<RecursoListPage, RecursoListViewmodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PcpAppBar(title: tr.pcp.recursos.list.title),
      body: Container(
        color: Colors.white,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 635),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(children: [
                PcpSearchFormField(
                    controller: viewModel.pesquisaController,
                    hintText: tr.pcp.shared.searchHint),
                const SizedBox(height: 30),
                ViewModelBuilder<RecursoListViewmodel, RecursoListState>(
                  viewModel: viewModel,
                  buildWhen: (previous, current) =>
                      previous.loading != current.loading ||
                      previous.recursos != current.recursos,
                  builder: (context, state) {
                    if (state.loading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (viewModel.pesquisaController.text.isEmpty) {
                      return RecentList(viewmodel: viewModel, state: state);
                    }

                    if (state.recursos == null || state.recursos!.isEmpty) {
                      return Text(tr.pcp.shared.emptyList.search);
                    }

                    return RecursoList(
                        viewmodel: viewModel, recursos: state.recursos!);
                  },
                ),
                const SizedBox(height: 80),
                PcpPrimaryButton(
                    text: tr.pcp.recursos.list.addItem,
                    onPressed: () async {
                      await Nav.pushNamed(PcpRouting.recursosCreate);

                      viewModel.getRecentList();
                    })
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class RecentList extends StatelessWidget {
  final RecursoListState state;
  final RecursoListViewmodel viewmodel;

  const RecentList({Key? key, required this.state, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text(tr.pcp.recursos.list.lastTitle,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'PT Sans Narrow'))
        ]),
        const SizedBox(height: 24),
        state.recentRecursos == null || state.recentRecursos!.isEmpty
            ? Text(tr.pcp.shared.emptyList.recent)
            : RecursoList(viewmodel: viewmodel, recursos: state.recentRecursos!)
      ],
    );
  }
}

class RecursoList extends StatelessWidget {
  final List<Recurso> recursos;
  final RecursoListViewmodel viewmodel;

  const RecursoList({Key? key, required this.recursos, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: recursos
          .map((recurso) => RecursoItem(viewmodel: viewmodel, recurso: recurso))
          .toList(),
    );
  }
}

class RecursoItem extends StatelessWidget {
  final Recurso recurso;
  final RecursoListViewmodel viewmodel;

  const RecursoItem({Key? key, required this.recurso, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          recurso.codigo,
          style: const TextStyle(
              fontSize: 14,
              fontFamily: 'PT Sans',
              fontWeight: FontWeight.w700,
              height: 1.4,
              color: Color(0xFF5A5A5A)),
        ),
        subtitle: Text(recurso.descricao,
            style: const TextStyle(
                fontFamily: 'PT Sans',
                fontSize: 12,
                height: 1.2,
                color: Color(0xFF999999))),
        trailing: const Icon(Icons.chevron_right),
        onTap: () async {
          await Nav.pushNamed(
            '${PcpRouting.grupoDeRecursos}/${recurso.id}',
          );

          viewmodel.getRecentList();
        });
  }
}
