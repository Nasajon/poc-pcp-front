import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
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
        appBar: AppBar(
            title: Text(viewModel.state.id != null
                ? tr.pcp.gruposDeRecursos.form.titles.edit
                : tr.pcp.gruposDeRecursos.form.titles.create)),
        body: _GrupoDeRecursoForm(viewModel: viewModel));
  }
}

class _GrupoDeRecursoForm extends StatelessWidget {
  final GrupoDeRecursoFormViewmodel viewModel;
  final _formKey = GlobalKey<FormState>();

  _GrupoDeRecursoForm({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    var screenMobile = screenSize < 635;

    return ViewModelBuilder<GrupoDeRecursoFormViewmodel,
            GrupoDeRecursoFormState>(
        viewModel: viewModel,
        buildWhen: (previous, current) => previous.loading != current.loading,
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          var formColumn = Wrap(
              runSpacing: Spacing.sm.value,
              direction: Axis.horizontal,
              children: [
                _CodigoFormField(viewModel: viewModel),
                _DescricaoFormField(viewModel: viewModel),
                _TipoDeRecursoDropdownButton(viewModel: viewModel)
              ]);

          var formGrid = Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(child: _CodigoFormField(viewModel: viewModel)),
                  Spacing.sm.horizontal,
                  Flexible(
                      flex: 3, child: _DescricaoFormField(viewModel: viewModel))
                ],
              ),
              Spacing.sm.vertical,
              _TipoDeRecursoDropdownButton(viewModel: viewModel)
            ],
          );

          return Container(
              color: Colors.white,
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 635),
                  child: Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Spacing.lg.value,
                                  horizontal: Spacing.sm.value),
                              child: screenMobile ? formColumn : formGrid),
                          Padding(
                              padding: EdgeInsets.only(
                                  bottom: Spacing.md.value,
                                  right: Spacing.md.value),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomTextButton.large(
                                      text: tr.pcp.shared.back,
                                      onPressed: () {
                                        Nav.pop();

                                        if (Nav.history.length == 1) {
                                          Nav.pushNamed(
                                              PcpRouting.grupoDeRecursos);
                                        }
                                      }),
                                  Spacing.xs.vertical,
                                  ContainedButton.large(
                                      expand: false,
                                      text: state.id != null
                                          ? tr.pcp.shared.updade
                                          : tr.pcp.shared.create,
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          viewModel.save(context);
                                        }
                                      })
                                ],
                              ))
                        ]),
                  ),
                ),
              ));
        });
  }
}

class _CodigoFormField extends StatelessWidget {
  const _CodigoFormField({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final GrupoDeRecursoFormViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: viewModel.codigoController,
      decoration: InputDecoration(
          labelText: tr.pcp.gruposDeRecursos.form.labels.codigo),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Obrigatório';
        }

        return null;
      },
    );
  }
}

class _DescricaoFormField extends StatelessWidget {
  const _DescricaoFormField({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final GrupoDeRecursoFormViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: viewModel.descricaoController,
      decoration: InputDecoration(
          labelText: tr.pcp.gruposDeRecursos.form.labels.descricao),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Obrigatório';
        }

        return null;
      },
    );
  }
}

class _TipoDeRecursoDropdownButton extends StatefulWidget {
  const _TipoDeRecursoDropdownButton({Key? key, required this.viewModel})
      : super(key: key);

  final GrupoDeRecursoFormViewmodel viewModel;

  @override
  State<_TipoDeRecursoDropdownButton> createState() =>
      _TipoDeRecursoDropdownButtonState();
}

class _TipoDeRecursoDropdownButtonState
    extends State<_TipoDeRecursoDropdownButton> {
  late bool someItemSelected;

  @override
  void initState() {
    updateSomeItemSelected();

    super.initState();
  }

  void updateSomeItemSelected() {
    setState(() {
      someItemSelected = widget.viewModel.tipoDeRecurso != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<TipoDeRecurso>(
        items: widget.viewModel.tiposDeRecurso,
        compareFn: (item1, item2) => item1.hashCode == item2.hashCode,
        selectedItem: widget.viewModel.tipoDeRecurso,
        itemAsString: (item) => item.descricao,
        validator: (value) {
          if (value == null) {
            return 'Obrigatório';
          }

          return null;
        },
        onChanged: (value) {
          widget.viewModel.tipoDeRecurso = value;

          updateSomeItemSelected();
        },
        dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
          label: Text(tr.pcp.recursos.form.labels.tipoDeRecurso),
        )),
        dropdownBuilder: !someItemSelected
            ? null
            : (context, selectedItem) => Text(selectedItem!.descricao,
                style: TextStyle(
                  fontWeight: AppFontWeight.regular.value,
                  fontSize: AppFontSize.body1.value,
                  height: AppLineHeight.sm.value,
                )),
        popupProps: PopupProps.menu(
          isFilterOnline: true,
          showSelectedItems: true,
          fit: FlexFit.loose,
          itemBuilder: (context, item, isSelected) => ListTile(
              selected: isSelected,
              selectedTileColor: const Color(0xFFEAEAEA),
              title: Text(item.descricao,
                  style: TextStyle(fontSize: AppFontSize.body2.value))),
        ));
  }
}
