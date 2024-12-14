import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/data_model/category_datamodel.dart';
import 'package:news/presentation/screens/home/home_drawer.dart';
import 'package:news/presentation/screens/home/tabs/categories_tab/categories.dart';
import 'package:news/presentation/screens/home/tabs/category_details/category_details.dart';
import 'package:news/presentation/screens/home/tabs/settings_tab/settings.dart';

import '../../../core/assets_manager.dart';
import '../../../core/colors_manager.dart';

class Home extends StatefulWidget{
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState(){

  SelectedWidget = Categories(onCategoryClicked:onCategoryClicked,);
}
late Widget SelectedWidget;
  @override
  Widget build(BuildContext context) {
   return Container(
     decoration: const BoxDecoration(
         color: ColorsManager.white,
         image: DecorationImage(image: AssetImage(AssetsManager.backgroungImage))),
     child: Scaffold(
         appBar: AppBar(
           title: const Text('News App'),
         ),
         drawer: HomeDrawer(onMenuItemClicked: onDrawerItemClick),
         body: SelectedWidget),
   );
  }

  void onCategoryClicked(CategoryDatamodel category){
    SelectedWidget =CategoryDetails(categoryDatamodel:category);
    setState(() {

    });
  }

  void onDrawerItemClick(MenuItem Item){
    Navigator.pop(context);
    if (Item == MenuItem.Categories){
      SelectedWidget = Categories (onCategoryClicked: onCategoryClicked,);
    }else if (Item ==MenuItem.Settings){
      SelectedWidget = Settings();
    }
    setState(() {

    });
  }
}