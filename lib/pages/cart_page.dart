import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_store/components/cart_items.dart';
import 'package:shoes_store/models/cart.dart';
import 'package:shoes_store/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(
              "My cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            const SizedBox(
              height: 20,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  //get inidividual shoe 
                  Shoe individualShoe = value.getUserCart()[index];
                  //return
                  return CartItem(shoe: individualShoe);

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
