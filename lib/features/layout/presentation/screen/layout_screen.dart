import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_delivery_app/core/extension/responsive_context.dart';
import 'package:restaurant_delivery_app/core/utils/app_size/app_size.dart';
import '../../../../core/custom_widgets/custom_broken_icons/icon_broken.dart';
import '../business_logic/restaurant_cubit.dart';
import '../widget/custom_app_bar.dart';
import '../widget/custom_nav_bar/custom_buttom_navigation.dart';
import '../widget/floating_action_button.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantBloc>(
      create: (context) => RestaurantBloc(),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const CustomFloatinActionButton(),
        bottomNavigationBar: const CustomButtomNavBar(),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomAppBar(),
                    SizedBox(
                      height: context.screenHeight * 0.04,
                    ),
                    SearchBar(
                      onTap: () {},
                      padding: WidgetStateProperty.all(
                        const EdgeInsetsDirectional.symmetric(horizontal: 10),
                      ),
                      backgroundColor:
                          WidgetStateProperty.all(Colors.grey[200]),
                      surfaceTintColor: WidgetStateProperty.all(Colors.grey),
                      elevation: WidgetStateProperty.all(1),
                      leading: const Icon(
                        IconBroken.search,
                        size: AppSize.s20,
                      ),
                      hintText: 'Search Food',
                      hintStyle: WidgetStateProperty.all(
                        Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.04,
                    ),
                    Text(
                      'Popular Food ',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: context.screenHeight * 0.02,
              ),

              // listView of Food Item
              SizedBox(
                height: context.heightPercent(0.28),
                child: ListView.separated(
                  padding: const EdgeInsetsDirectional.only(start: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 250,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Card(
                              margin: EdgeInsets.zero,
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                'assets/images/hamburger.jpg',
                                fit: BoxFit.cover,
                                width: context.screenWidth,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: context.screenHeight * 0.01,
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.screenWidth * 0.02,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Power powelPowerPower powelPowerPower powelPower',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  SizedBox(
                                    height: context.screenHeight * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '10 \$ ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                      ),
                                      const Icon(
                                        Icons.star,
                                        size: AppSize.s15,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: context.screenWidth * 0.01,
                                      ),
                                      Text(
                                        '5.0',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 5,
                  ),
                ),
              ),
              SizedBox(
                height: context.screenHeight * 0.02,
              ),
              Text(
                'Popular Food ',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
