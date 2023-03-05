import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/screens/catalog_product.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Catalogue',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            CatalogProducts()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      /**
       *  floatingActionButton: FloatingActionButton(
        onPressed: ()=> Get.to(const CartScreen(), 
        transition: Transition.zoom),
        child: const Icon(Icons.shopping_cart_checkout_sharp, color: Colors.white),
      ),
       */
    );
  }
}
