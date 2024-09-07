import 'package:flutter/material.dart';
import 'package:login_pj/components/mybotton.dart';
import 'package:login_pj/models/product.dart';
import 'package:login_pj/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  //remove item from cart
  void removeItemFromCart(BuildContext context, Product product) {
    // show a dialog box to ask user to confirm to remove from cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text("Remove this item from your cart ? "),
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

                    context.read<Shop>().removeFromCart(product);
                  },
                  child: const Text("Yes"),
                ),
              ],
            ));
  }

  // user pressed pay button
  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content:
            Text("User want to pay Connect this app to your payement backend"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text("Cart Page"),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // cart list
          Expanded(
            child: cart.isEmpty
                ? const Center(child: Text("Your cart is empty..."))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      // get individual item in cart
                      final item = cart[index];
                      // return as a cart tile UI
                      return ListTile(
                        leading: Image.asset(item.imagePath),
                        title: Text(item.name),
                        subtitle: Text(
                          item.price.toString(),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () => removeItemFromCart(context, item),
                        ),
                      );
                    },
                  ),
          ),

          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
              ontap: () => payButtonPressed(context),
              child: const Text("PAY NOW"),
            ),
          )
          //pay button
        ],
      ),
    );
  }
}
