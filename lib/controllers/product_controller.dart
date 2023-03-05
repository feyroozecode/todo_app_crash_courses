import 'package:get/get.dart';
import 'package:todo_app/models/produit.dart';

class ProductController extends GetxController {
  final products = <Produit>[].obs;

  @override
  onInit() {
    products.addAll(Produit.products);
    super.onInit();
  }
}
