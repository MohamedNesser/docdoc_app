import 'package:docdoc_app/core/theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRedios;
  final Color? background;
  final double? horizantalpadding;
  final double? verticalpadding;
  final double? buttonWidth;
  final double? buttonhight;
  final String buttontext;
  final TextStyle textStyle;
  final VoidCallback onpressd;

  const AppTextButton({
    super.key,
    this.borderRedios,
    this.background,
    this.horizantalpadding,
    this.verticalpadding,
    this.buttonWidth,
    this.buttonhight,
    required this.buttontext,
    required this.textStyle,
    required this.onpressd,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: horizantalpadding?.w ?? 16.w,
          vertical: verticalpadding?.h ?? 13.h,
        ),
        backgroundColor: background ?? ColorManger.primarycolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(borderRedios ?? 16.0),
        ),
        fixedSize: Size(
          buttonWidth?.w ?? double.maxFinite,
          buttonhight?.h ?? 50.h,
        ),
      ),

      onPressed: onpressd,
      child: Text(buttontext, style: textStyle),
    );
  }
}
