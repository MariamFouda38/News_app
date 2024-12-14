import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/config/theme/app_styles.dart';
import 'package:news/core/colors_manager.dart';

class AppTheme {
  static ThemeData Light =ThemeData(
    appBarTheme: AppBarTheme(color: ColorsManager.green ,
        centerTitle: true,
    titleTextStyle: AppStyles.appbar as TextStyle,
    shape: RoundedRectangleBorder(borderRadius:
    BorderRadius.vertical(bottom: Radius.circular(50.r)),
    ),
    ),
      scaffoldBackgroundColor: Colors.transparent

  );
}