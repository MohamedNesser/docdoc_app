import 'package:docdoc_app/core/text_styles.dart';
import 'package:docdoc_app/core/theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldwidget extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabileborder;
  final InputBorder? foucsborder;
  final String hintText;
  final TextStyle? inputTextStyle;
  final TextStyle? hintstyle;
  final Widget? suffixIcon;
  final bool? isobscureText;
  final TextEditingController? controller;
  const TextFieldwidget({
    super.key,
    this.contentPadding,
    required this.hintText,
    this.inputTextStyle,
    this.hintstyle,
    this.suffixIcon,
    this.isobscureText,
    this.controller,
    this.enabileborder,
    this.foucsborder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
        focusedBorder:
            foucsborder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1.3,
                color: ColorManger.primarycolor,
              ),
              borderRadius: BorderRadius.circular(15.r),
            ),
        enabledBorder:
            enabileborder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1.3,
                color: ColorManger.graylightercolor,
              ),
              borderRadius: BorderRadius.circular(15.r),
            ),
        hintStyle: hintstyle ?? TextStyles.font14medium,
        hintText: hintText,
        filled: true,
        fillColor: ColorManger.formgraycolor,
        suffixIcon: suffixIcon,
      ),
      obscureText: isobscureText ?? false,
    );
  }
}
