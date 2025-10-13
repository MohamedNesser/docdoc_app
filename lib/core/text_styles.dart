import 'package:docdoc_app/core/theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24blackw700 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorManger.blackcolor,
  );
  static TextStyle font32bluebold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorManger.primarycolor,
  );
  static TextStyle font13gray = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    color: ColorManger.grayhintcolor,
  );
  static TextStyle font16semibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorManger.whitecolor,
  );
}
