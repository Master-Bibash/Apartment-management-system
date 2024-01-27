import 'package:flutter/material.dart';
import 'package:flutter_apartmentmanagementsystem_1/Theme/style.dart';
import 'package:flutter_apartmentmanagementsystem_1/screens/history/history_log_screen.dart';
import 'package:flutter_apartmentmanagementsystem_1/screens/login/components/widgets/Bloc/inpuit_user_bloc.dart';
import 'package:flutter_apartmentmanagementsystem_1/screens/login/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      child:MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => FormFieldCubit(),),
        ]
      , child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Visitor Management System',
        theme: appTheme(),
      

        routes: {
          '/login': (context) => const LoginScreen(),
          '/history-log': (context) => HistoryLogScreen(),
          
          
          },
        home: const LoginScreen(),
        
      ),
      
      
      
      ),
      designSize: const Size(360, 640),

    );
    
  }
}
