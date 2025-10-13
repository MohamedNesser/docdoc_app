import 'package:docdoc_app/core/routing/app_router.dart';
import 'package:docdoc_app/core/theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocdocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocdocApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DocDoc App',
        theme: ThemeData(
          primaryColor: ColorManger.primarycolor,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/LoginScreen',
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
