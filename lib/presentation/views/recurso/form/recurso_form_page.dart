import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/pcp.dart';

class RecursoFormPage extends StatefulWidget {
  const RecursoFormPage({Key? key}) : super(key: key);

  @override
  State<RecursoFormPage> createState() => _RecursoFormPageState();
}

class _RecursoFormPageState
    extends ViewState<RecursoFormPage, RecursoFormViewmodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(viewModel.state.id != null
              ? tr.pcp.recursos.form.titles.edit
              : tr.pcp.recursos.form.titles.create)),
      body: ViewModelBuilder<RecursoFormViewmodel, RecursoFormState>(
        viewModel: viewModel,
        buildWhen: (previous, current) => previous.loading != current.loading,
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Spacing.md.value),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 635),
                child: _RecursoForm(viewModel: viewModel),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _RecursoForm extends StatelessWidget {
  _RecursoForm({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final RecursoFormViewmodel viewModel;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    var screenMobile = screenSize < 635;

    var formGrid = [
      Row(
        children: [
          Flexible(child: _CodigoFormField(viewModel: viewModel)),
          Spacing.sm.horizontal,
          Flexible(
              flex: 3,
              fit: FlexFit.loose,
              child: _DescricaoFormField(viewModel: viewModel)),
        ],
      ),
      Spacing.sm.vertical,
      Row(
        children: [
          Expanded(
            child: _TipoDeRecursoDropdownButton(viewModel: viewModel),
          ),
          Spacing.sm.horizontal,
          Expanded(child: _GrupoDeRecursoDropdownSearch(viewModel: viewModel))
        ],
      ),
      Spacing.sm.vertical,
      Row(
        children: [
          Flexible(child: _CentroDeTrabalhoFormField(viewModel: viewModel)),
          Spacing.sm.horizontal,
          Flexible(child: _CustoPorHoraFormField(viewModel: viewModel)),
        ],
      )
    ];

    var formColum = [
      _CodigoFormField(viewModel: viewModel),
      Spacing.sm.vertical,
      _DescricaoFormField(viewModel: viewModel),
      Spacing.sm.vertical,
      _TipoDeRecursoDropdownButton(viewModel: viewModel),
      Spacing.sm.vertical,
      _GrupoDeRecursoDropdownSearch(viewModel: viewModel),
      Spacing.sm.vertical,
      _CentroDeTrabalhoFormField(viewModel: viewModel),
      Spacing.sm.vertical,
      _CustoPorHoraFormField(viewModel: viewModel)
    ];

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: Spacing.lg.value),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tr.pcp.shared.requiredFields,
                    style: TextStyle(
                        fontSize: context.text.callout.fontSize,
                        height: AppLineHeight.sm.value)),
                Spacing.sm.vertical,
                ...(screenMobile ? formColum : formGrid)
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: Spacing.md.value),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PcpTextButton(
                      text: tr.pcp.shared.back,
                      onPressed: () {
                        Nav.pop();

                        if (Nav.history.length == 1) {
                          Nav.pushNamed(PcpRouting.recursos);
                        }
                      }),
                  Spacing.xs.horizontal,
                  ContainedButton.large(
                      text: viewModel.state.id != null
                          ? tr.pcp.shared.updade
                          : tr.pcp.shared.create,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          viewModel.save(context);
                        }
                      })
                ],
              ))
        ],
      ),
    );
  }
}

class _CentroDeTrabalhoFormField extends StatelessWidget {
  const _CentroDeTrabalhoFormField({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final RecursoFormViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<TipoDeRecurso>(
        items: const [],
        compareFn: (item1, item2) => item1.hashCode == item2.hashCode,
        dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
          label: Text(tr.pcp.recursos.form.labels.centroDeTrabalho),
        )),
        popupProps: PopupProps.menu(
          isFilterOnline: true,
          showSelectedItems: true,
          emptyBuilder: (context, searchEntry) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Spacing.sm.value, vertical: Spacing.xs.value),
              child: Text(tr.pcp.shared.emptyList.search,
                  style: TextStyle(
                      fontWeight: AppFontWeight.regular.value,
                      fontSize: AppFontSize.body1.value,
                      height: AppLineHeight.sm.value)),
            );
          },
          fit: FlexFit.loose,
          itemBuilder: (context, item, isSelected) => ListTile(
              selected: isSelected,
              selectedTileColor: const Color(0xFFEAEAEA),
              title: Text(item.descricao,
                  style: TextStyle(fontSize: AppFontSize.body2.value))),
        ));
  }
}

class _DescricaoFormField extends StatelessWidget {
  const _DescricaoFormField({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final RecursoFormViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: viewModel.descricaoController,
        decoration:
            InputDecoration(labelText: tr.pcp.recursos.form.labels.nome),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Obrigatório';
          }

          return null;
        });
  }
}

class _CodigoFormField extends StatelessWidget {
  const _CodigoFormField({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final RecursoFormViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: viewModel.codigoController,
        decoration:
            InputDecoration(labelText: tr.pcp.recursos.form.labels.codigo),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Obrigatório';
          }

          return null;
        });
  }
}

class _CustoPorHoraFormField extends StatelessWidget {
  _CustoPorHoraFormField({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final RecursoFormViewmodel viewModel;
  final currencyFormatter = CurrencyTextInputFormatter(symbol: "R\$");

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue:
            currencyFormatter.format(viewModel.custoPorHoraController.text),
        inputFormatters: [currencyFormatter],
        keyboardType: TextInputType.number,
        onChanged: (value) => viewModel.custoPorHoraController.text =
            currencyFormatter.getUnformattedValue().toString(),
        decoration: InputDecoration(
            labelText: tr.pcp.recursos.form.labels.custoPorHora));
  }
}

class _GrupoDeRecursoDropdownSearch extends StatefulWidget {
  const _GrupoDeRecursoDropdownSearch({Key? key, required this.viewModel})
      : super(key: key);

  final RecursoFormViewmodel viewModel;

  @override
  State<_GrupoDeRecursoDropdownSearch> createState() =>
      _GrupoDeRecursoDropdownSearchState();
}

class _GrupoDeRecursoDropdownSearchState
    extends State<_GrupoDeRecursoDropdownSearch> {
  late bool someItemSelected;

  @override
  void initState() {
    updateSomeItemSelected();

    super.initState();
  }

  void updateSomeItemSelected() {
    setState(() {
      someItemSelected = widget.viewModel.grupoDeRecurso != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<GrupoDeRecurso>(
        asyncItems: (text) => widget.viewModel.getGruposDeRecursos(text),
        compareFn: (item1, item2) => item1.hashCode == item2.hashCode,
        itemAsString: (item) => item.descricao,
        selectedItem: widget.viewModel.grupoDeRecurso,
        onChanged: (value) {
          widget.viewModel.grupoDeRecurso = value;

          updateSomeItemSelected();
        },
        dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
          label: Text(tr.pcp.recursos.form.labels.grupoDeRecurso),
        )),
        dropdownBuilder: !someItemSelected
            ? null
            : ((context, selectedItem) => Text(selectedItem!.descricao,
                style: TextStyle(
                  fontWeight: AppFontWeight.regular.value,
                  fontSize: AppFontSize.body1.value,
                  height: AppLineHeight.sm.value,
                ))),
        popupProps: PopupProps.menu(
          showSearchBox: true,
          isFilterOnline: true,
          showSelectedItems: true,
          searchFieldProps: TextFieldProps(
              autofocus: true,
              style: TextStyle(fontSize: AppFontSize.headline3.value),
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: context.colorPalette.base[900],
                    size: 22.fontSize,
                  ),
                  suffixStyle:
                      TextStyle(fontWeight: AppFontWeight.bold.value))),
          fit: FlexFit.loose,
          itemBuilder: (context, item, isSelected) => ListTile(
              selected: isSelected,
              selectedTileColor: const Color(0xFFEAEAEA),
              title: Text(item.descricao,
                  style: TextStyle(fontSize: AppFontSize.body2.value))),
        ));
  }
}

class _TipoDeRecursoDropdownButton extends StatefulWidget {
  const _TipoDeRecursoDropdownButton({Key? key, required this.viewModel})
      : super(key: key);

  final RecursoFormViewmodel viewModel;

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
