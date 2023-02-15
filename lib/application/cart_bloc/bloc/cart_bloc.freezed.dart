// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryDish categoryDish) addToCart,
    required TResult Function(CategoryDish categoryDish) removeFromCart,
    required TResult Function() clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryDish categoryDish)? addToCart,
    TResult? Function(CategoryDish categoryDish)? removeFromCart,
    TResult? Function()? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryDish categoryDish)? addToCart,
    TResult Function(CategoryDish categoryDish)? removeFromCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(ClearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(ClearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CartEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryDish categoryDish) addToCart,
    required TResult Function(CategoryDish categoryDish) removeFromCart,
    required TResult Function() clearCart,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryDish categoryDish)? addToCart,
    TResult? Function(CategoryDish categoryDish)? removeFromCart,
    TResult? Function()? clearCart,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryDish categoryDish)? addToCart,
    TResult Function(CategoryDish categoryDish)? removeFromCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$AddToCartCopyWith<$Res> {
  factory _$$AddToCartCopyWith(
          _$AddToCart value, $Res Function(_$AddToCart) then) =
      __$$AddToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryDish categoryDish});
}

/// @nodoc
class __$$AddToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCart>
    implements _$$AddToCartCopyWith<$Res> {
  __$$AddToCartCopyWithImpl(
      _$AddToCart _value, $Res Function(_$AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryDish = null,
  }) {
    return _then(_$AddToCart(
      null == categoryDish
          ? _value.categoryDish
          : categoryDish // ignore: cast_nullable_to_non_nullable
              as CategoryDish,
    ));
  }
}

/// @nodoc

class _$AddToCart implements AddToCart {
  const _$AddToCart(this.categoryDish);

  @override
  final CategoryDish categoryDish;

  @override
  String toString() {
    return 'CartEvent.addToCart(categoryDish: $categoryDish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCart &&
            (identical(other.categoryDish, categoryDish) ||
                other.categoryDish == categoryDish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryDish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      __$$AddToCartCopyWithImpl<_$AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryDish categoryDish) addToCart,
    required TResult Function(CategoryDish categoryDish) removeFromCart,
    required TResult Function() clearCart,
  }) {
    return addToCart(categoryDish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryDish categoryDish)? addToCart,
    TResult? Function(CategoryDish categoryDish)? removeFromCart,
    TResult? Function()? clearCart,
  }) {
    return addToCart?.call(categoryDish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryDish categoryDish)? addToCart,
    TResult Function(CategoryDish categoryDish)? removeFromCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(categoryDish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements CartEvent {
  const factory AddToCart(final CategoryDish categoryDish) = _$AddToCart;

  CategoryDish get categoryDish;
  @JsonKey(ignore: true)
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromCartCopyWith<$Res> {
  factory _$$RemoveFromCartCopyWith(
          _$RemoveFromCart value, $Res Function(_$RemoveFromCart) then) =
      __$$RemoveFromCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryDish categoryDish});
}

/// @nodoc
class __$$RemoveFromCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveFromCart>
    implements _$$RemoveFromCartCopyWith<$Res> {
  __$$RemoveFromCartCopyWithImpl(
      _$RemoveFromCart _value, $Res Function(_$RemoveFromCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryDish = null,
  }) {
    return _then(_$RemoveFromCart(
      null == categoryDish
          ? _value.categoryDish
          : categoryDish // ignore: cast_nullable_to_non_nullable
              as CategoryDish,
    ));
  }
}

/// @nodoc

class _$RemoveFromCart implements RemoveFromCart {
  const _$RemoveFromCart(this.categoryDish);

  @override
  final CategoryDish categoryDish;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(categoryDish: $categoryDish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCart &&
            (identical(other.categoryDish, categoryDish) ||
                other.categoryDish == categoryDish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryDish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartCopyWith<_$RemoveFromCart> get copyWith =>
      __$$RemoveFromCartCopyWithImpl<_$RemoveFromCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryDish categoryDish) addToCart,
    required TResult Function(CategoryDish categoryDish) removeFromCart,
    required TResult Function() clearCart,
  }) {
    return removeFromCart(categoryDish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryDish categoryDish)? addToCart,
    TResult? Function(CategoryDish categoryDish)? removeFromCart,
    TResult? Function()? clearCart,
  }) {
    return removeFromCart?.call(categoryDish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryDish categoryDish)? addToCart,
    TResult Function(CategoryDish categoryDish)? removeFromCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(categoryDish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class RemoveFromCart implements CartEvent {
  const factory RemoveFromCart(final CategoryDish categoryDish) =
      _$RemoveFromCart;

  CategoryDish get categoryDish;
  @JsonKey(ignore: true)
  _$$RemoveFromCartCopyWith<_$RemoveFromCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCartCopyWith<$Res> {
  factory _$$ClearCartCopyWith(
          _$ClearCart value, $Res Function(_$ClearCart) then) =
      __$$ClearCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearCart>
    implements _$$ClearCartCopyWith<$Res> {
  __$$ClearCartCopyWithImpl(
      _$ClearCart _value, $Res Function(_$ClearCart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCart implements ClearCart {
  const _$ClearCart();

  @override
  String toString() {
    return 'CartEvent.clearCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryDish categoryDish) addToCart,
    required TResult Function(CategoryDish categoryDish) removeFromCart,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryDish categoryDish)? addToCart,
    TResult? Function(CategoryDish categoryDish)? removeFromCart,
    TResult? Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryDish categoryDish)? addToCart,
    TResult Function(CategoryDish categoryDish)? removeFromCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements CartEvent {
  const factory ClearCart() = _$ClearCart;
}

/// @nodoc
mixin _$CartState {
  int get cartCount => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  Option<CartInfo> get cartInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({int cartCount, double totalPrice, Option<CartInfo> cartInfo});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartCount = null,
    Object? totalPrice = null,
    Object? cartInfo = null,
  }) {
    return _then(_value.copyWith(
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      cartInfo: null == cartInfo
          ? _value.cartInfo
          : cartInfo // ignore: cast_nullable_to_non_nullable
              as Option<CartInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cartCount, double totalPrice, Option<CartInfo> cartInfo});
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartState>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartCount = null,
    Object? totalPrice = null,
    Object? cartInfo = null,
  }) {
    return _then(_$_CartState(
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      cartInfo: null == cartInfo
          ? _value.cartInfo
          : cartInfo // ignore: cast_nullable_to_non_nullable
              as Option<CartInfo>,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState(
      {required this.cartCount,
      required this.totalPrice,
      required this.cartInfo});

  @override
  final int cartCount;
  @override
  final double totalPrice;
  @override
  final Option<CartInfo> cartInfo;

  @override
  String toString() {
    return 'CartState(cartCount: $cartCount, totalPrice: $totalPrice, cartInfo: $cartInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            (identical(other.cartCount, cartCount) ||
                other.cartCount == cartCount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.cartInfo, cartInfo) ||
                other.cartInfo == cartInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartCount, totalPrice, cartInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final int cartCount,
      required final double totalPrice,
      required final Option<CartInfo> cartInfo}) = _$_CartState;

  @override
  int get cartCount;
  @override
  double get totalPrice;
  @override
  Option<CartInfo> get cartInfo;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
