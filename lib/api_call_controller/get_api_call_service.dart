import 'dart:convert';
import 'package:category_services/api_call_controller/get_api_call_model.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  get isLoading => null;

  get categories => null;

  Future<List<CategoryModel>> fetchCategories() async {
    final url = Uri.parse('https://dummyjson.com/products/category-list');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => CategoryModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
