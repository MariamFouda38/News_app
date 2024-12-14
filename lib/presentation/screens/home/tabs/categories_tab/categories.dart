import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/config/theme/app_styles.dart';
import 'package:news/data_model/category_datamodel.dart';

import '../../../../../core/colors_manager.dart';
import 'catedory_weidget/category_widget.dart';

typedef OnCategoryClicked =void Function(CategoryDatamodel category);

class Categories extends StatelessWidget {
   Categories({super.key,required this.onCategoryClicked});
   
   OnCategoryClicked onCategoryClicked;
  List<CategoryDatamodel> categoriesList = CategoryDatamodel.getAllCategories();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding:REdgeInsets.all(8),
      child: Column(children: [
      Text('Pick your category of interest',style: AppStyles.pickCategory,),
        GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
            ,mainAxisSpacing: 25,
            crossAxisSpacing: 20),
          itemCount: categoriesList.length,
          itemBuilder:(context, index) => InkWell(
            onTap: (){
              onCategoryClicked(categoriesList[index]);
            },
            child: CategoryWidget(
                categoryDatamodel: categoriesList[index], index: index),
          ),
          )
    ],
    )
    );
  }
}



