import '../core/assets_manager.dart';
import '../core/colors_manager.dart';
import '../core/constant_manager.dart';
import '../core/strings_manager.dart';
import 'package:flutter/material.dart';


class CategoryDatamodel {
  String id;
  String title;
  String imagePath;
  Color color;
  CategoryDatamodel({required this.id,required this.title,required this.imagePath, required this.color});

  static List<CategoryDatamodel> getAllCategories()=>[
    CategoryDatamodel(
        id: ConstantManager.sportsId,
        title: StringsManager.sports,
        color: ColorsManager.green,
        imagePath: AssetsManager.sports, ),
    CategoryDatamodel(
        id: ConstantManager.generalId,
        title: StringsManager.general,
        color: ColorsManager.darkBlue,
        imagePath: AssetsManager.general),
    CategoryDatamodel(
        id: ConstantManager.healthId,
        title: StringsManager.health,
        color: ColorsManager.pink,
        imagePath: AssetsManager.health),
    CategoryDatamodel(
        id: ConstantManager.businessId,
        title: StringsManager.business,
        color: ColorsManager.brown,
        imagePath: AssetsManager.business),
    CategoryDatamodel(
        id: ConstantManager.entertainmentId,
        title: StringsManager.entertainment,
        color: ColorsManager.red,
        imagePath: AssetsManager.entertainment),
    CategoryDatamodel(
        id: ConstantManager.scienceId,
        title: StringsManager.science,
        color: ColorsManager.yellow,
        imagePath: AssetsManager.science),
    CategoryDatamodel(
        id: ConstantManager.techId,
        title: StringsManager.tech,
        color: ColorsManager.green,
        imagePath: AssetsManager.general),
  ];

}