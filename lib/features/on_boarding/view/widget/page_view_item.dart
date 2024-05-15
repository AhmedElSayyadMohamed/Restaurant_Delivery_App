import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class DescriptionPageViewItem extends StatelessWidget {
  final String title;
  final String body;
  const DescriptionPageViewItem({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          context.tr(title),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          context.tr(body),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
