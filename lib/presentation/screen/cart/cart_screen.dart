import 'package:another_flushbar/flushbar_helper.dart';
import 'package:ecom_store/application/cart_bloc/bloc/cart_bloc.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';
import 'package:ecom_store/presentation/screen/cart/widgets/cart_data_widget.dart';
import 'package:ecom_store/presentation/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc()..add(const CartEvent.started()),
      child: WillPopScope(
        onWillPop: () {
          Get.offAll(() => const HomeScreen());
          return Future.value(true);
        },
        child: const Scaffold(
          body: CartWidget(),
        ),
      ),
    );
  }
}

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {
        state.cartInfo.fold(
          () => {},
          (info) {
            FlushbarHelper.createInformation(
              message: info.map(
                itemAddedToCart: (_) => 'Item Added to Cart',
                itemAlreadyInCart: (_) => 'Item Quantity Incremented in Cart',
                itemRemovedFromCart: (_) => 'Item Removed From Cart',
                clearedCart: (_) => '',
                itemQuantityDecrementedInCart: (_) =>
                    'Item Quantity Decremented in Cart',
                itemNotInCart: (_) => 'Item Not In Cart Already',
              ),
            ).show(context);
          },
        );
      },
      builder: (context, state) {
        return ValueListenableBuilder(
            valueListenable: Hive.box<CategoryDish>('cart').listenable(),
            builder: (context, cartBox, _) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Order Summary'),
                ),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (cartBox.isNotEmpty)
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: cartBox.length,
                          itemBuilder: (BuildContext context, int index) {
                            final cart = cartBox.getAt(index) as CategoryDish;

                            return CartDataWidget(cart: cart);
                          },
                        ),
                      ),
                    if (cartBox.isEmpty)
                      Center(
                          child: Text(
                        'Your Cart is Empty',
                        style: boldValue,
                      )),
                    const SizedBox(height: 100)
                  ],
                ),
                bottomSheet: cartBox.isEmpty
                    ? null
                    : Container(
                        height: 100,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen[100],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 15, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Total Amount',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54),
                                  ),
                                  Text(
                                    'Gross INR ${state.totalPrice}',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.green[800]),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: screenWidth - 40,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    context
                                        .read<CartBloc>()
                                        .add(const CartEvent.clearCart());
                                    context
                                        .read<CartBloc>()
                                        .add(const CartEvent.started());
                                    Get.defaultDialog(
                                      title: "Order Summary",
                                      middleText: "Order successfully placed!",
                                      backgroundColor: Colors.green,
                                      titleStyle:
                                          const TextStyle(color: Colors.white),
                                      middleTextStyle:
                                          const TextStyle(color: Colors.white),
                                    );

                                    Get.offAll(() => const HomeScreen());
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green),
                                  child: const Text(
                                    'Place Order',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      ),
              );
            });
      },
    );
  }
}
