import 'package:flutter/material.dart';
import 'package:raj_store_app/common/styles/shadows.dart';
import 'package:raj_store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:raj_store_app/common/widgets/images/t_rounded_image.dart';
import 'package:raj_store_app/utils/constants/colors.dart';
import 'package:raj_store_app/utils/constants/image_strings.dart';
import 'package:raj_store_app/utils/constants/sizes.dart';
import 'package:raj_store_app/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 100,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white),
      child: Column(
        children: [
          //   Thumbnail, Wishlist, Button, Discount Tray
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                //   Thumbnail Image
                const TRoundedImage(
                  imageUrl: TImages.productImage1,
                  applyImageRadius: true,
                ),

              //   Sale Tag
                TRoundedContainer(
                  radius: TSizes.sm,
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                )
              ],
            ),
          )
          //   Details
        ],
      ),
    );
  }
}