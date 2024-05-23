import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/custom_widgets/custom_broken_icons/icon_broken.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back Mr Hunter',
                style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.w500,fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(IconBroken.location),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Cairo, Egypt',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            radius: 25,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: const Icon(IconBroken.buy),
          ),
        ],
      ),
    );
  }
}
