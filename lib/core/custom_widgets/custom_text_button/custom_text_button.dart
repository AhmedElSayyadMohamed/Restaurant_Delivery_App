import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final Color? labelColor;

  const CustomTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: labelColor ?? Theme.of(context).primaryColor,
            ),
      ),
    );
  }
}
