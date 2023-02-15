part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required int cartCount,
    required double totalPrice,
    required Option<CartInfo> cartInfo,
  }) = _CartState;

  factory CartState.initial() => CartState(
        cartCount: 0,
        totalPrice: 0,
        cartInfo: none(),
      );
}
