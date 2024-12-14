import 'package:flutter/material.dart';
import 'package:news/data_model/category_datamodel.dart';

class CategoryDetails extends StatelessWidget {
   CategoryDetails({super.key,required this.categoryDatamodel});
  CategoryDatamodel categoryDatamodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(categoryDatamodel.id),
      color: Colors.blue,
    );
  }
}
