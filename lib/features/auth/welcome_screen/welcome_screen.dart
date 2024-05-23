import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/extension/responsive_context.dart';
import 'package:restaurant_delivery_app/core/utils/image_manager.dart';
import 'package:restaurant_delivery_app/core/utils/string_managers.dart';
import '../../../core/custom_widgets/custom_button/custom_button.dart';
import '../../../core/routing/routes.dart';
import 'widget/custom_clipper.dart';

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
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.loginRoute,
                        );
                      },
                      label: context.tr(StringManager.login),
                    ),
                    SizedBox(
                      height: context.heightPercent(0.02),
                    ),
                    CustomButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.registerRoute,
                        );
                      },
                      label: context.tr(StringManager.register),
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
