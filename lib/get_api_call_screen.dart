import 'package:category_services/api_call_controller/get_api_call_service.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final CategoryService categoryController = Get.put(CategoryService());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category List'),
      ),
      body: Obx(() {
        if (categoryController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (categoryController.categories.isEmpty) {
          return Center(child: Text('No categories found.'));
        } else {
          return ListView.builder(
            itemCount: categoryController.categories.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(categoryController.categories[index].name),
              );
            },
          );
        }
      }),
    );
  }
}
