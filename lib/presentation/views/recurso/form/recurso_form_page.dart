import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/presentation/presentation.dart';

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
      appBar: PcpAppBar(
          title: viewModel.state.id != null
              ? tr.pcp.recursos.form.titles.edit
              : tr.pcp.recursos.form.titles.create),
      body: ViewModelBuilder<RecursoFormViewmodel, RecursoFormState>(
        viewModel: viewModel,
        buildWhen: (previous, current) => previous.loading != current.loading,
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Container(color: Colors.white, child: Center());
        },
      ),
    );
  }
}
