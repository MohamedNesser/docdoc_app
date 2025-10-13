import 'package:docdoc_app/core/text_styles.dart';
import 'package:docdoc_app/core/theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionstext extends StatelessWidget {
  const TermsAndConditionstext({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "By Logging, You agree to Our ",
                style: TextStyles.font13gray.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: "Terms & Conditions",
                style: TextStyles.font14blackw700,
              ),
              TextSpan(
                text: " and",
                style: TextStyles.font13gray.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: " Privacy Policy ",
                style: TextStyles.font14blackw700,
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: " Already have an account yet? ",
                style: TextStyles.font14blackw700,
              ),
              TextSpan(
                text: " Sign Up ",
                style: TextStyles.font14blackw700.copyWith(
                  color: ColorManger.primarycolor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
