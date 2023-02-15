part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.addToCart(CategoryDish categoryDish) = AddToCart;
  const factory CartEvent.removeFromCart(
    CategoryDish categoryDish,
  ) = RemoveFromCart;
  const factory CartEvent.clearCart() = ClearCart;
}
