import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/config/theme/app_styles.dart';
import 'package:news/core/colors_manager.dart';
import 'package:news/core/strings_manager.dart';

class HomeDrawer extends StatelessWidget {
  HomeDrawer({super.key, required this.onMenuItemClicked});

  Function (MenuItem) onMenuItemClicked;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.6,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 110.h,
            color: ColorsManager.green,
            child: Text(
              StringsManager.drawerTitle, style: AppStyles.drawerTitle,),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    onMenuItemClicked(MenuItem.Categories);
                  },
                  child: Row(children: [
                    Icon(Icons.list,size:30),
                    SizedBox(width: 10.w,),
                    Text(
                      StringsManager.categories, style: AppStyles.categories,)
                  ],),
                ),
                SizedBox(height: 12.h,),
                InkWell(
                  onTap: () {
                    onMenuItemClicked(MenuItem.Settings);
                  },
                  child: Row(children: [
                    Icon(Icons.settings,size: 30,),
                    SizedBox(width: 10.w,),
                    Text(StringsManager.settings, style: AppStyles.settings,)
                  ],),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
enum MenuItem{
  Settings,
  Categories
}
