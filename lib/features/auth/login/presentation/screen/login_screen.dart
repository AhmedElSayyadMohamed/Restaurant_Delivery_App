import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/custom_widgets/custom_button/custom_button.dart';
import 'package:restaurant_delivery_app/core/custom_widgets/custom_text_button/custom_text_button.dart';
import 'package:restaurant_delivery_app/core/extension/responsive_context.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/string_managers.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  context.tr(StringManager.login),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                Text(
                  'Add your details to login',
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
                      hintText: 'Your email',
                      hintStyle:
                          Theme.of(context).inputDecorationTheme.hintStyle),
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  style: Theme.of(context).textTheme.bodyMedium,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'password',
                      hintStyle:
                          Theme.of(context).inputDecorationTheme.hintStyle),
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                CustomButton(
                  label: StringManager.login,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                       Routes.layoutRoute,
                        (_)=>false,
                        );
                  },
                ),
                SizedBox(
                  height: context.screenHeight * 0.01,
                ),
                CustomTextButton(
                  label: 'Forget your password?',
                  labelColor: Theme.of(context).textTheme.bodySmall!.color,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.resetPasswordRoute);
                  },
                ),
                SizedBox(
                  height: context.screenHeight * 0.05,
                ),
                Text(
                  'or Login With',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                CustomButton(
                  isBTWithIcon: true,
                  icon: 'assets/icons/fb.png',
                  label: 'Login With Facebook',
                  onPressed: () {},
                  backGroundColor: const Color.fromARGB(255, 25, 105, 175),
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                CustomButton(
                    isBTWithIcon: true,
                    icon: 'assets/icons/google.png',
                    label: 'Login With Google',
                    backGroundColor: const Color.fromARGB(255, 165, 69, 67),
                    onPressed: () {}),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an Account?',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      '  Sign Up',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
