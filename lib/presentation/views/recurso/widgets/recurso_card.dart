import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pcp/pcp.dart';

class RecursoCard extends StatelessWidget {
  const RecursoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PcpCard(
        title: tr.pcp.recursos.title,
        subTitle: 'Veja e roteirize suas entregas do dia a dia.',
        onPressed: () => Nav.pushNamed(PcpRouting.recursos));
  }
}
