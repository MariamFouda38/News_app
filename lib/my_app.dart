import 'package:flutter/material.dart';
import 'package:news/config/theme/app_theme.dart';
import 'package:news/core/routes_manager.dart';
import 'package:news/presentation/screens/home/home.dart';
import 'package:news/presentation/screens/splash/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(412, 870),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.Splash : (context) =>  Splash(),
        RoutesManager.Home : (context) =>  Home(),
      },
      initialRoute: RoutesManager.Splash,
      theme: AppTheme.Light,
      themeMode: ThemeMode.light,
    ));
  }
}