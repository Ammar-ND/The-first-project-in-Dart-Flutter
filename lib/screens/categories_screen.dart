import 'package:flutter/material.dart';
import 'package:sixthy/app_data.dart';
import 'package:sixthy/widgets/Category_item.dart';

class CategoriesScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Touristenführer'), 
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 15,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map(
          (categoryData) => CategoryItem(
            id: categoryData.id,
            title: categoryData.title,
            imageUrl: categoryData.imageUrl,
          ),
        ).toList(),
      ),
    );
  }
}
