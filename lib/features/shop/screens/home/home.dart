import 'package:flutter/material.dart';
import 'package:raj_store_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:raj_store_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:raj_store_app/utils/constants/colors.dart';
import 'package:raj_store_app/utils/constants/image_strings.dart';
import 'package:raj_store_app/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                // Appbar
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                //   Searchbar
                TSearchContainer(text: 'Search in Store'),
                SizedBox(height: TSizes.spaceBtwSections),

                //   Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      // Heading
                      TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white),
                      SizedBox(height: TSizes.spaceBtwItems),

                      //   Categories
                      THomeCategories()
                    ],
                  ),
                )
              ],
            )
            ),

            //   Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TRoundedImage(imageUrl: TImages.promoBanner3),
            )
          ],
        ),
      ),
    );
  }
}