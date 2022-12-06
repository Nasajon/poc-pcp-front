import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/pcp.dart';

class PcpCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function()? onPressed;

  const PcpCard(
      {Key? key, required this.title, required this.subTitle, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: context.colorScheme.background,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                offset: Offset.zero,
                blurRadius: 6,
                spreadRadius: 2)
          ]),
      child: Padding(
        padding: EdgeInsets.all(Spacing.sm.value),
        child: Column(children: [
          Row(
            children: [
              Expanded(child: Text(title, style: context.text.body1Bold)),
              Spacing.xxs.horizontal,
              IconButton(
                  onPressed: onPressed,
                  icon: const FaIcon(FontAwesomeIcons.angleRight))
            ],
          ),
          Spacing.xxs.vertical,
          Text(subTitle,
              style: context.textTheme.bodyText2!
                  .copyWith(fontWeight: AppFontWeight.regular.value)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PcpTextButton(text: tr.pcp.shared.openApp, onPressed: onPressed)
            ],
          )
        ]),
      ),
    );
  }
}
