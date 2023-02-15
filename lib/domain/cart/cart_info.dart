import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_info.freezed.dart';

@freezed
class CartInfo with _$CartInfo {
  const factory CartInfo.itemAddedToCart() = ItemAddedToCart;
  const factory CartInfo.itemRemovedFromCart() = ItemRemovedFromCart;
  const factory CartInfo.itemQuantityDecrementedInCart() =
      ItemQuantityDecrementedInCart;
  const factory CartInfo.itemAlreadyInCart() = ItemAlreadyInCart;
  const factory CartInfo.itemNotInCart() = ItemNotInCart;
  const factory CartInfo.clearedCart() = ClearedCart;
}
