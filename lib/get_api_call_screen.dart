import 'package:category_services/api_call_controller/get_api_call_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category List'),
      ),
      body: Obx(() {
        if (categoryController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else if (categoryController.categories.isEmpty) {
          return const Center(child: Text('No categories found.'));
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
