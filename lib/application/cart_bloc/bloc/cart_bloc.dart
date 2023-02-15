import 'package:dartz/dartz.dart';
import 'package:ecom_store/domain/cart/cart_info.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<_Started>((event, emit) async {
      await Hive.openBox<CategoryDish>('cart');
      final cartBox = Hive.box<CategoryDish>('cart');

      int cartCount = cartBox.length;
      double totalPrice = 0;
      for (var element in cartBox.values) {
        totalPrice += element.tPrice;
      }
      emit(
        state.copyWith(
          cartCount: cartCount,
          totalPrice: totalPrice,
        ),
      );
    });
    on<AddToCart>(
      (event, emit) async {
        emit(
          state.copyWith(cartInfo: none()),
        );

        final cartBox = Hive.box<CategoryDish>('cart');

        int index = 0;

        for (var element in cartBox.values) {
          if (element.dishId == event.categoryDish.dishId) {
            event.categoryDish.quantity = element.quantity += 1;
            event.categoryDish.tPrice = event.categoryDish.quantity *
                double.parse(event.categoryDish.dishPrice ?? '1');

            cartBox.putAt(index, event.categoryDish);

            emit(
              state.copyWith(
                cartInfo: optionOf(const CartInfo.itemAlreadyInCart()),
              ),
            );
            return;
          }
          index += 1;
        }

        event.categoryDish.tPrice = event.categoryDish.quantity *
            double.parse(event.categoryDish.dishPrice ?? '1');

        cartBox.add(event.categoryDish);

        int cartCount = cartBox.length;

        emit(
          state.copyWith(
            cartCount: cartCount,
            cartInfo: optionOf(const CartInfo.itemAddedToCart()),
          ),
        );
      },
    );

    on<RemoveFromCart>(
      (event, emit) {
        emit(
          state.copyWith(cartInfo: none()),
        );

        final cartBox = Hive.box<CategoryDish>('cart');

        int index = 0;

        for (var element in cartBox.values) {
          if (element.dishId == event.categoryDish.dishId) {
            if (element.quantity == 1) {
              cartBox.deleteAt(index);

              int cartCount = cartBox.length;

              emit(
                state.copyWith(
                  cartCount: cartCount,
                  cartInfo: optionOf(const CartInfo.itemRemovedFromCart()),
                ),
              );
              return;
            } else if (element.quantity > 1) {
              event.categoryDish.quantity = element.quantity -= 1;
              event.categoryDish.tPrice = event.categoryDish.quantity *
                  double.parse(event.categoryDish.dishPrice ?? '1');

              cartBox.putAt(index, event.categoryDish);

              int cartCount = cartBox.length;
              emit(
                state.copyWith(
                  cartCount: cartCount,
                  cartInfo:
                      optionOf(const CartInfo.itemQuantityDecrementedInCart()),
                ),
              );
              return;
            }
          }
          index += 1;
        }
        emit(
          state.copyWith(
            cartInfo: optionOf(const CartInfo.itemNotInCart()),
          ),
        );
      },
    );

    on<ClearCart>((event, emit) {
      final cartBox = Hive.box<CategoryDish>('cart');
      cartBox.clear();
    });
  }
}
