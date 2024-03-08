import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raj_store_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:raj_store_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:raj_store_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:raj_store_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:raj_store_app/utils/constants/image_strings.dart';
import 'package:raj_store_app/utils/constants/text_strings.dart';
import '../../controllers/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(children: [
        // Horizontal scrollable pages
        PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subtitle: TTexts.onBoardingSubTitle1),
              OnboardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subtitle: TTexts.onBoardingSubTitle2),
              OnboardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subtitle: TTexts.onBoardingSubTitle3)
            ]),
        //   skip button
        const OnboardingSkip(),
        //   Dot navigation smoothPageIndicator
        const OnboardingDotNavigation(),
        //   circular button
        const OnboardingNextButton()
      ]),
    );
  }
}
