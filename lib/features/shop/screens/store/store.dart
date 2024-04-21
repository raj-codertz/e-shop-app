import 'package:flutter/material.dart';
import 'package:raj_store_app/common/widgets/app_bar/appbar.dart';
import 'package:raj_store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:raj_store_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:raj_store_app/common/widgets/layouts/grid_layout.dart';
import 'package:raj_store_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:raj_store_app/common/widgets/texts/section_heading.dart';
import 'package:raj_store_app/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:raj_store_app/utils/constants/colors.dart';
import 'package:raj_store_app/utils/constants/enums.dart';
import 'package:raj_store_app/utils/constants/image_strings.dart';
import 'package:raj_store_app/utils/constants/sizes.dart';
import 'package:raj_store_app/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/images/t_circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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

                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: TRoundedContainer(
                                padding: const EdgeInsets.all(TSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    //   Icon
                                    // Aim of this is to take space needed to that image
                                    Flexible(
                                      child: TCircularImage(
                                          backgroundColor: Colors.transparent,
                                          overlayColor:
                                              THelperFunctions.isDarkMode(context)
                                                  ? TColors.white
                                                  : TColors.black,
                                          image: TImages.clothIcon),
                                    ),
                                    const SizedBox(
                                        height: TSizes.spaceBtwItems / 2),

                                    //   Text
                                    // Aim of using Expanded widget is to take max space
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const TBrandTitleWithVerifiedIcon(
                                              title: 'Nike',
                                              brandTextSize: TextSizes.large),
                                          Text(
                                            '256 products',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),

              //   Tab bar
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: TColors.primary,
                  unselectedLabelColor: TColors.darkerGrey,
                  labelColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.primary,
                  tabs: const [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],),
              )
            ];
          },
          body: Container(),
        ),
      ),
    );
  }
}