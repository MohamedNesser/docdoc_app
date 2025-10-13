import 'package:docdoc_app/core/text_styles.dart';
import 'package:docdoc_app/core/widgets/app_text_button.dart';
import 'package:docdoc_app/features/login_screen/widgets_login/form_login.dart';
import 'package:docdoc_app/features/login_screen/widgets_login/list_social_icons.dart';
import 'package:docdoc_app/features/login_screen/widgets_login/terms_and_conditions_text.dart';
import 'package:docdoc_app/features/login_screen/widgets_login/text_welcome_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                TextWelcomeWidgetLogin(),
                SizedBox(height: 30.h),
                FormLoginWidget(),
                SizedBox(height: 30.h),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyles.font12bluereguler,
                  ),
                ),
                SizedBox(height: 30.h),
                AppTextButton(
                  buttontext: "Login",
                  textStyle: TextStyles.font16semibold,
                  onpressd: () {},
                ),
                SizedBox(height: 30.h),
                ListSocialIcons(),
                SizedBox(height: 30.h),
                TermsAndConditionstext(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
