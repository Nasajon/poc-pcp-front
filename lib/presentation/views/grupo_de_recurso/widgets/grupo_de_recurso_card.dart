import 'package:flutter/material.dart';
import 'package:pcp/pcp.dart';
import 'package:flutter_core/flutter_core.dart';

class GrupoDeRecursoCard extends StatelessWidget {
  const GrupoDeRecursoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PcpCard(
        title: tr.pcp.gruposDeRecursos.title,
        subTitle: 'Veja e roteirize suas entregas do dia a dia.',
        onPressed: () => Nav.pushNamed(PcpRouting.grupoDeRecursos));
  }
}
