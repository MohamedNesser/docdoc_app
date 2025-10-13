import 'package:docdoc_app/core/text_styles.dart';
import 'package:docdoc_app/features/onboarding_screen/widgets/doc_logo_and_name.dart';
import 'package:docdoc_app/features/onboarding_screen/widgets/doctor_and_text.dart';
import 'package:docdoc_app/features/onboarding_screen/widgets/get_start_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              DocLogoAndName(),
              SizedBox(height: 40.h),
              DoctorAndtext(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily \nwith Docdoc to get a new experience.",
                      style: TextStyles.font13gray,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.h),
                    const GetStartButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
