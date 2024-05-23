import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/custom_widgets/custom_button/custom_button.dart';
import 'package:restaurant_delivery_app/core/extension/responsive_context.dart';
import '../../../../../core/utils/string_managers.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Text(
                  context.tr(StringManager.resetPassword),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                Text(
                  context.tr(StringManager.resetPasswordSubTitle),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                      hintText: 'New Password',
                      hintStyle:
                          Theme.of(context).inputDecorationTheme.hintStyle),
                ),
                 SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                      hintText: 'Confirm New Password',
                      hintStyle:Theme.of(context).inputDecorationTheme.hintStyle),
                ),
                SizedBox(
                  height: context.screenHeight * 0.06,
                ),
                CustomButton(
                  label: StringManager.next,
                  onPressed: () {},
                   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
