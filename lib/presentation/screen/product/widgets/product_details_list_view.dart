import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_store/application/cart_bloc/bloc/cart_bloc.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';
import 'package:ecom_store/presentation/screen/product/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsListView extends StatelessWidget {
  final List<CategoryDish>? categoryDishList;
  const ProductDetailsListView({
    Key? key,
    required this.categoryDishList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return categoryDishList?.isEmpty ?? true
        ? const Center(
            child: Text("Category is Empty"),
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: categoryDishList?.length,
            itemBuilder: (context, index) {
              return _productDetailsWidget(categoryDishList![index]);
            });
  }

  Widget _productDetailsWidget(CategoryDish categoryDish) {
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {
        state.cartInfo.fold(
          () => {},
          (info) {
            FlushbarHelper.createInformation(
              message: info.map(
                itemAddedToCart: (_) => 'Item Added To Cart',
                itemAlreadyInCart: (_) => 'Item Quantity Incremented',
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
                      categoryDish.dishType == '2'
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
                          categoryDish.dishName ?? '',
                          style: boldWord,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'INR ${categoryDish.dishPrice ?? ''}',
                              style: boldValue,
                            ),
                            Text(
                              '${categoryDish.dishCalories ?? ''} Calories',
                              style: boldValue,
                            ),
                          ],
                        ),
                        Text(
                          categoryDish.dishDescription ?? '',
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
                        imageUrl: categoryDish.dishImage ?? '',
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
              ButtonWidget(
                categoryDish: categoryDish,
              ),
              if (categoryDish.addonCat?.isNotEmpty ?? false)
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
