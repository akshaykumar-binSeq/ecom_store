import 'package:ecom_store/application/cart_bloc/bloc/cart_bloc.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({
    super.key,
    required this.categoryDish,
  });

  final CategoryDish categoryDish;

  @override
  Widget build(BuildContext context) {
    final cartBox = Hive.box<CategoryDish>('cart');
    int qty = 0;
    cartBox.values
        .where((item) => item.dishId == categoryDish.dishId)
        .forEach((item) => qty = item.quantity);
    return ValueListenableBuilder(
        valueListenable: Hive.box<CategoryDish>('cart').listenable(),
        builder: (context, cartBox, _) {
          return Padding(
            padding: const EdgeInsets.only(left: 36.0, top: 15),
            child: Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.removeFromCart(categoryDish));

                      context.read<CartBloc>().add(const CartEvent.started());
                    },
                    splashColor: Colors.green[800],
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 12,
                        right: 12,
                        bottom: 8,
                        top: 8,
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green,
                    child: Text(
                      qty.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.addToCart(categoryDish));
                      context.read<CartBloc>().add(const CartEvent.started());
                    },
                    splashColor: Colors.green[800],
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 12,
                        right: 12,
                        bottom: 8,
                        top: 8,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
