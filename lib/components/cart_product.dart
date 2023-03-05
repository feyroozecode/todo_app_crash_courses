import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controllers/product_controller.dart';

class CartProduct extends StatelessWidget {
  CartProduct({super.key});

  final ProductController controller = ProductController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Obx(() => SizedBox(
          // Observe and update the change on the widget
          height: size.height * 0.65,
          child: controller.products.length != null
              ? const Center(child: Center(child: Text('panier vide ')))
              : ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container();
                  },
                ),
        ));
  }
}

/*

n CartProductCard(
                      controller: controller,
                      product: controller.products.keys.toList()[index],
                      quantity: controller.products.values.toList()[index],
                      index: index,
                    );
@immutable
class _CatalogProductCard extends StatelessWidget {
  _CatalogProductCard(this.index);

  int index;

  //final cartController = Get.put(CartController());

  ProductController productController = Get.find();


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(productController.products[index].imageUrl),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Text(
                productController.products[index].name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Expanded(
              child: Text('${productController.products[index].price}'),
            ),
            IconButton(
                onPressed: () {
                  cartController
                      .addProdct(productController.products[index]); // add product to a list
                },
                icon: const Icon(Icons.add))
          ],
        ));
  }
}
*/