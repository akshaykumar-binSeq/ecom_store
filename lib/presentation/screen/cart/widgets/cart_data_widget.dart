import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_store/application/cart_bloc/bloc/cart_bloc.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';
import 'package:ecom_store/presentation/screen/cart/widgets/cart_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartDataWidget extends StatelessWidget {
  const CartDataWidget({
    super.key,
    required this.cart,
  });

  final CategoryDish cart;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black54, width: 1),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      cart.dishType == '2'
                          ? 'assets/image/icons/veg_icon.png'
                          : 'assets/image/icons/non-veg_icon.png',
                      width: 18,
                      height: 18,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth - (32 + 20 + 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cart.dishName ?? '',
                          style: boldWord,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'INR ${cart.dishPrice ?? ''}',
                              style: boldValue,
                            ),
                            Text(
                              '${cart.dishCalories ?? ''} Calories',
                              style: boldValue,
                            ),
                          ],
                        ),
                        Text(
                          cart.dishDescription ?? '',
                          style: smallText,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 70,
                    height: 75,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      color: primaryColor[100],
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: cart.dishImage ?? '',
                        placeholder: (context, url) => Container(
                          margin: const EdgeInsets.all(.5),
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        imageBuilder: (context, imageProvider) => Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: const EdgeInsets.all(.5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        errorWidget: (context, url, error) => const SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Image(
                            image: AssetImage('assets/image/food_items.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CartButtonWidget(
                    categoryDish: cart,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      'Gross INR ${cart.tPrice.toString()}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.green[800]),
                    ),
                  ),
                ],
              ),
              if (cart.addonCat?.isNotEmpty ?? false)
                Padding(
                  padding: const EdgeInsets.only(left: 36.0, top: 10),
                  child: Text(
                    'Customization Available',
                    style: TextStyle(color: Colors.red[800], fontSize: 16),
                  ),
                ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
