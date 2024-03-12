import 'package:flutter/material.dart';
import 'package:raj_store_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:raj_store_app/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';

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
                TSearchContainer(text: 'Search in Store')
                //   Categories
              ],
            ))
          ],
        ),
      ),
    );
  }
}