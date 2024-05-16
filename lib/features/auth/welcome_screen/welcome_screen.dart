import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_delivery_app/core/extension/responsive_context.dart';
import 'package:restaurant_delivery_app/core/utils/image_manager.dart';
import 'package:restaurant_delivery_app/core/utils/string_managers.dart';
import '../../../core/custom_widgets/custom_button/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(ImageManager.appLogo),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: context.widthPercent(0.05),
                ),
                width: context.screenWidth,
                height: context.heightPercent(0.3),
                child: Column(
                  children: [
                    Text(
                      context.tr(StringManager.onboardingBodyPage1),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const Spacer(),
                    CustomButton(
                      onPressed: () {},
                      label: 'login',
                    ),
                    SizedBox(
                      height: context.heightPercent(0.02),
                    ),
                    CustomButton(
                      onPressed: () {},
                      label: 'Create an account',
                      labelColor: Theme.of(context).primaryColor,
                      sideColor: Theme.of(context).primaryColor,
                      backGroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: context.heightPercent(0.02),
                    ),
                  ],
                ),
              ),
            ),
            ClipPath(
              clipper: CustomCliper(),
              child: Container(
                alignment: Alignment.topCenter,
                height: context.heightPercent(0.5),
                decoration: ShapeDecoration(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
                child: Image.asset(ImageManager.landingBackground),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlPoint = Offset(size.width * 0.24, size.height);
    Offset endPoint = Offset(size.width * 0.25, size.height * 0.96);
    Offset controlPoint2 = Offset(size.width * 0.3, size.height * 0.75);
    Offset endPoint2 = Offset(size.width * 0.5, size.height * 0.74);
    Offset controlPoint3 = Offset(size.width * 0.7, size.height * 0.75);
    Offset endPoint3 = Offset(size.width * 0.75, size.height * 0.94);
    Offset controlPoint4 = Offset(size.width * 0.76, size.height);
    Offset endPoint4 = Offset(size.width * 0.82, size.height);
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width * 0.2, size.height)
      ..quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..quadraticBezierTo(
        controlPoint2.dx,
        controlPoint2.dy,
        endPoint2.dx,
        endPoint2.dy,
      )
      ..quadraticBezierTo(
        controlPoint3.dx,
        controlPoint3.dy,
        endPoint3.dx,
        endPoint3.dy,
      )
      ..quadraticBezierTo(
        controlPoint4.dx,
        controlPoint4.dy,
        endPoint4.dx,
        endPoint4.dy,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
