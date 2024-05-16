import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  final Color? backGroundColor;
  final Color? sideColor;
  final Color? labelColor;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backGroundColor,
    this.sideColor, this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor ?? Theme.of(context).primaryColor,
          side: BorderSide(color: sideColor ?? Theme.of(context).primaryColor,),
          foregroundColor:labelColor??Colors.white, 
          ),
      child: Text(label),
    );
  }
}
