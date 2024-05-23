import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/extension/responsive_context.dart';
import '../../../../../core/custom_widgets/custom_broken_icons/icon_broken.dart';
import '../../../../../core/utils/string_managers.dart';
import 'nav_button.dart';

class CustomButtomNavBar extends StatelessWidget {
  const CustomButtomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 18,
      child: Row(
        children: [
          CustomNavBarButton(
            label: StringManager.menu.tr(),
            icon: IconBroken.category,
            index: 0,
          ),
          SizedBox(
            width: context.screenWidth * 0.07,
          ),
          CustomNavBarButton(
            label: StringManager.offers.tr(),
            icon: IconBroken.bag,
            index: 1,
          ),
          const Spacer(),
          CustomNavBarButton(
            label: StringManager.profile.tr(),
            icon: IconBroken.profile,
            index: 3,
          ),
          SizedBox(
            width: context.screenWidth * 0.07,
          ),
          CustomNavBarButton(
            label: StringManager.settings.tr(),
            icon: IconBroken.setting,
            index: 4,
          ),
        ],
      ),
    );
  }
}
