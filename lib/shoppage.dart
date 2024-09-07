import 'package:flutter/material.dart';
import 'package:login_pj/components/my_drawer.dart';
import 'package:login_pj/components/my_product_tile.dart';
import 'package:login_pj/models/product.dart';
import 'package:login_pj/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access products in shop

    final products = context.watch<Shop>().shop;
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Center(
            child: Text("Shop Page"),
          ),
          actions: [
            IconButton(
              onPressed: () => Navigator.pushNamed(
                context,
                '/cart_page',
              ),
              icon: const Icon(Icons.shopping_cart_outlined),
            )
          ],
        ),
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Text("Pick from a selected list of premium products "),
            ),

            // shop subtile

            // product  list
            SizedBox(
              height: 600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    //get individual product from shop
                    final product = products[index];
                    //return as a product tile UI
                    return MyProductTile(product: product);
                  }),
            ),
          ],
        ));
  }
}
