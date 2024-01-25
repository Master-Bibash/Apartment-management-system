import 'package:flutter/material.dart';
import 'package:flutter_apartmentmanagementsystem_1/Theme/style.dart';
import 'package:flutter_apartmentmanagementsystem_1/screens/login/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  // Initialize ScreenUtil before running the app

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      ScreenUtil.init(context);

    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Visitor Management System',
        theme: appTheme(),
      

        routes: {'/login': (context) => const LoginScreen()},
        home: const LoginScreen(),
      ),
      designSize: const Size(360, 640),
    );
  }
}
