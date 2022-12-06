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
      appBar: AppBar(title: Text(tr.pcp.recursos.list.title)),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Spacing.md.value),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 635),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Spacing.xxs.value + Spacing.sm.value),
              child: Column(children: [
                PcpSearchFormField(
                    controller: viewModel.pesquisaController,
                    hintText: tr.pcp.shared.searchHint),
                Spacing.lg.vertical,
                ViewModelBuilder<RecursoListViewmodel, RecursoListState>(
                  viewModel: viewModel,
                  buildWhen: (previous, current) =>
                      previous.loading != current.loading ||
                      previous.recursos != current.recursos,
                  builder: (context, state) {
                    if (state.loading) {
                      return const Center(child: CircularLoading());
                    }

                    if (viewModel.pesquisaController.text.isEmpty) {
                      return _RecentList(viewmodel: viewModel, state: state);
                    }

                    if (state.recursos == null || state.recursos!.isEmpty) {
                      return Text(tr.pcp.shared.emptyList.search);
                    }

                    return _RecursoList(
                        viewmodel: viewModel, recursos: state.recursos!);
                  },
                ),
                Spacing.xl.vertical,
                Spacing.xl.vertical,
                ElevatedButton(
                    child: Text(tr.pcp.recursos.list.addItem),
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

class _RecentList extends StatelessWidget {
  final RecursoListState state;
  final RecursoListViewmodel viewmodel;

  const _RecentList({Key? key, required this.state, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text(tr.pcp.recursos.list.lastTitle,
              style: TextStyle(
                  fontSize: AppFontSize.body1.value,
                  fontWeight: AppFontWeight.bold.value,
                  fontFamily: 'PT Sans Narrow'))
        ]),
        Spacing.md.vertical,
        state.recentRecursos == null || state.recentRecursos!.isEmpty
            ? Text(tr.pcp.shared.emptyList.recent)
            : _RecursoList(
                viewmodel: viewmodel, recursos: state.recentRecursos!)
      ],
    );
  }
}

class _RecursoList extends StatelessWidget {
  final List<Recurso> recursos;
  final RecursoListViewmodel viewmodel;

  const _RecursoList(
      {Key? key, required this.recursos, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: recursos
          .map(
              (recurso) => _RecursoItem(viewmodel: viewmodel, recurso: recurso))
          .toList(),
    );
  }
}

class _RecursoItem extends StatelessWidget {
  final Recurso recurso;
  final RecursoListViewmodel viewmodel;

  const _RecursoItem({Key? key, required this.recurso, required this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          recurso.codigo,
          style: TextStyle(
            fontSize: AppFontSize.callout.value,
            fontWeight: AppFontWeight.bold.value,
            height: AppLineHeight.md.value,
          ),
        ),
        subtitle: Text(recurso.descricao,
            style: TextStyle(
                fontSize: AppFontSize.caption.value,
                height: AppLineHeight.sm.value,
                color: context.colorPalette.base[400])),
        trailing: const Icon(Icons.chevron_right),
        onTap: () async {
          await Nav.pushNamed(
            '${PcpRouting.recursos}/${recurso.id}',
          );

          viewmodel.getRecentList();
        });
  }
}
