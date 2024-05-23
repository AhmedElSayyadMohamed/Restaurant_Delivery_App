import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/extension/responsive_context.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  final Color? backGroundColor;
  final Color? sideColor;
  final Color? labelColor;
  final bool isBTWithIcon;
  final String? icon;
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backGroundColor,
    this.sideColor,
    this.labelColor,
    this.icon, 
    this.isBTWithIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backGroundColor,
        side: sideColor == null ? null : BorderSide(color: sideColor!),
        foregroundColor: labelColor ?? Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(isBTWithIcon)
          Image.asset(icon!),
          SizedBox(width: context.screenWidth*0.04,),
          Text(label),
        ],
      ),
    );
  }
}
