import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/data_model/category_datamodel.dart';

import '../../../../../../config/theme/app_styles.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key,required this.categoryDatamodel,required this.index});
  CategoryDatamodel categoryDatamodel;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: categoryDatamodel.color,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.r),
              topLeft: Radius.circular(25.r),
              bottomLeft: Radius.circular(index.isEven ? 25 : 0),
              bottomRight: Radius.circular(index.isEven ? 0 : 25))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            categoryDatamodel.imagePath,
            width: 132.w,
            height: 116.h,
          ),
          Text(
            categoryDatamodel.title,
            style: AppStyles.categoryTitle,
          ),
        ],
      ),
    );
  }
}
