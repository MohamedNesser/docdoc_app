import 'package:docdoc_app/features/login_screen/widgets_login/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormLoginWidget extends StatefulWidget {
  const FormLoginWidget({super.key});

  @override
  State<FormLoginWidget> createState() => _FormLoginWidgetState();
}

class _FormLoginWidgetState extends State<FormLoginWidget> {
  GlobalKey formkey = GlobalKey<FormState>();
  bool isobscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          TextFieldwidget(hintText: "Email"),
          SizedBox(height: 20.h),
          TextFieldwidget(
            hintText: "Password",
            isobscureText: isobscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isobscure = !isobscure;
                });
              },
              child: Icon(isobscure ? Icons.visibility_off : Icons.visibility),
            ),
          ),
        ],
      ),
    );
  }
}
