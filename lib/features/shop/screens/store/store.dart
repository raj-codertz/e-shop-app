import 'package:flutter/material.dart';
import 'package:raj_store_app/common/widgets/app_bar/appbar.dart';
import 'package:raj_store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:raj_store_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:raj_store_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:raj_store_app/common/widgets/texts/section_heading.dart';
import 'package:raj_store_app/utils/constants/colors.dart';
import 'package:raj_store_app/utils/constants/sizes.dart';
import 'package:raj_store_app/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/images/t_circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [TCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.dark
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),

                // since i want to put thing vertically i cant use column here
                // cause of its unbounded height hence listview is suitable
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    //   Search Bar
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.all(0)),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    //     Featured Brands
                    TSectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    const TRoundedContainer(
                      padding: EdgeInsets.all(TSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          //   Icon
                          TCircularImage()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}