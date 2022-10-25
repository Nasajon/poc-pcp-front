import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/pcp.dart';

class GrupoDeRecursoFormPage extends StatefulWidget {
  const GrupoDeRecursoFormPage({Key? key}) : super(key: key);

  @override
  State<GrupoDeRecursoFormPage> createState() => _GrupoDeRecursoFormPageState();
}

class _GrupoDeRecursoFormPageState
    extends ViewState<GrupoDeRecursoFormPage, GrupoDeRecursoFormViewmodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PcpAppBar(
            title: viewModel.state.id != null
                ? tr.pcp.gruposDeRecursos.form.titles.edit
                : tr.pcp.gruposDeRecursos.form.titles.create),
        body: GrupoDeRecursoForm(viewModel: viewModel));
  }
}

class GrupoDeRecursoForm extends StatelessWidget {
  final GrupoDeRecursoFormViewmodel viewModel;

  const GrupoDeRecursoForm({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GrupoDeRecursoFormViewmodel,
            GrupoDeRecursoFormState>(
        viewModel: viewModel,
        buildWhen: (previous, current) => previous.loading != current.loading,
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Container(
              color: Colors.white,
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 635),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 40),
                              child: Wrap(
                                runSpacing: 16,
                                direction: Axis.horizontal,
                                children: [
                                  PcpTextFormField(
                                      controller: viewModel.codigoController,
                                      labelText: tr.pcp.gruposDeRecursos.form
                                          .labels.codigo),
                                  PcpTextFormField(
                                      controller: viewModel.descricaoController,
                                      labelText: tr.pcp.gruposDeRecursos.form
                                          .labels.descricao),
                                  PcpDropdownButtonFormField<TipoDeRecurso>(
                                      initialValue: viewModel.tipoDeRecurso,
                                      onChanged: (value) =>
                                          viewModel.tipoDeRecurso = value!,
                                      labelText: tr.pcp.gruposDeRecursos.form
                                          .labels.tipoDeRecurso,
                                      items: viewModel.tiposDeRecurso
                                          .map((e) => PcpDropdownMenuItem(
                                              value: e, text: e.descricao))
                                          .toList())
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(bottom: 36, right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                PcpTextButton(
                                    text: tr.pcp.shared.back,
                                    onPressed: () {
                                      Nav.pop();

                                      if (Nav.history.length == 1) {
                                        Nav.pushNamed(
                                            PcpRouting.grupoDeRecursos);
                                      }
                                    }),
                                const SizedBox(width: 10),
                                PcpPrimaryButton(
                                    text: state.id != null
                                        ? tr.pcp.shared.updade
                                        : tr.pcp.shared.create,
                                    onPressed: () => viewModel.save(context))
                              ],
                            ))
                      ]),
                ),
              ));
        });
  }
}
