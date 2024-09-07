import 'package:flutter/material.dart';
import 'package:login_pj/models/product.dart';
import 'package:login_pj/models/shop.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  //add to cart button pressed

  void addToCart(BuildContext context) {
    //show a dialog box to ask user to confirm to add to cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text("Add this item to your cart ? "),
              actions: [
                // cancel button
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("cancel"),
                ),
                // accept button
                MaterialButton(
                  onPressed: () {
                    //pop dialog box
                    Navigator.pop(context);
                    //add to cart

                    context.read<Shop>().addToCart(product);
                  },
                  child: const Text("Yes"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade800, borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(9),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // product image
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(product.imagePath),
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              // product name
              Text(
                product.name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.white),
              ),

              const SizedBox(
                height: 10,
              ),

              // product description
              Text(
                product.description,
                style: TextStyle(color: Colors.grey.shade200),
              ),
              // product price + add to cart button
              const SizedBox(
                height: 30,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // product price
              Text(
                style: const TextStyle(color: Colors.white),
                '\$${product.price}',
              ),

              // add to cart button

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: const Icon(Icons.add),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
