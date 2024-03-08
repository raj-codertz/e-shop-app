import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raj_store_app/common/styles/spacing_styles.dart';
import 'package:raj_store_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:raj_store_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:raj_store_app/utils/constants/text_strings.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                //   logo, title & sub-title
                const TLoginHeader(),

                //   Form
                const TLoginForm(),

                //   Divider
                TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                const SizedBox(height: TSizes.spaceBtwSections),

                //   FOOTER
                const TSocialButtons()
              ],
            )),
      ),
    );
  }
}
