// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProductDetailsList,
    required TResult Function(int index) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProductDetailsList,
    TResult? Function(int index)? selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProductDetailsList,
    TResult Function(int index)? selectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProductDetailsList value)
        getProductDetailsList,
    required TResult Function(_SelectCategory value) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProductDetailsList value)? getProductDetailsList,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProductDetailsList value)? getProductDetailsList,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

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
    extends _$ProductEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProductEvent.started()';
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
    required TResult Function() getProductDetailsList,
    required TResult Function(int index) selectCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProductDetailsList,
    TResult? Function(int index)? selectCategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProductDetailsList,
    TResult Function(int index)? selectCategory,
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
    required TResult Function(_GetProductDetailsList value)
        getProductDetailsList,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProductDetailsList value)? getProductDetailsList,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProductDetailsList value)? getProductDetailsList,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_GetProductDetailsListCopyWith<$Res> {
  factory _$$_GetProductDetailsListCopyWith(_$_GetProductDetailsList value,
          $Res Function(_$_GetProductDetailsList) then) =
      __$$_GetProductDetailsListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProductDetailsListCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetProductDetailsList>
    implements _$$_GetProductDetailsListCopyWith<$Res> {
  __$$_GetProductDetailsListCopyWithImpl(_$_GetProductDetailsList _value,
      $Res Function(_$_GetProductDetailsList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProductDetailsList implements _GetProductDetailsList {
  const _$_GetProductDetailsList();

  @override
  String toString() {
    return 'ProductEvent.getProductDetailsList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetProductDetailsList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProductDetailsList,
    required TResult Function(int index) selectCategory,
  }) {
    return getProductDetailsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProductDetailsList,
    TResult? Function(int index)? selectCategory,
  }) {
    return getProductDetailsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProductDetailsList,
    TResult Function(int index)? selectCategory,
    required TResult orElse(),
  }) {
    if (getProductDetailsList != null) {
      return getProductDetailsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProductDetailsList value)
        getProductDetailsList,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return getProductDetailsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProductDetailsList value)? getProductDetailsList,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return getProductDetailsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProductDetailsList value)? getProductDetailsList,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (getProductDetailsList != null) {
      return getProductDetailsList(this);
    }
    return orElse();
  }
}

abstract class _GetProductDetailsList implements ProductEvent {
  const factory _GetProductDetailsList() = _$_GetProductDetailsList;
}

/// @nodoc
abstract class _$$_SelectCategoryCopyWith<$Res> {
  factory _$$_SelectCategoryCopyWith(
          _$_SelectCategory value, $Res Function(_$_SelectCategory) then) =
      __$$_SelectCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_SelectCategoryCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_SelectCategory>
    implements _$$_SelectCategoryCopyWith<$Res> {
  __$$_SelectCategoryCopyWithImpl(
      _$_SelectCategory _value, $Res Function(_$_SelectCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_SelectCategory(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectCategory implements _SelectCategory {
  const _$_SelectCategory(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ProductEvent.selectCategory(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCategory &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCategoryCopyWith<_$_SelectCategory> get copyWith =>
      __$$_SelectCategoryCopyWithImpl<_$_SelectCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProductDetailsList,
    required TResult Function(int index) selectCategory,
  }) {
    return selectCategory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProductDetailsList,
    TResult? Function(int index)? selectCategory,
  }) {
    return selectCategory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProductDetailsList,
    TResult Function(int index)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProductDetailsList value)
        getProductDetailsList,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProductDetailsList value)? getProductDetailsList,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProductDetailsList value)? getProductDetailsList,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategory implements ProductEvent {
  const factory _SelectCategory(final int index) = _$_SelectCategory;

  int get index;
  @JsonKey(ignore: true)
  _$$_SelectCategoryCopyWith<_$_SelectCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<NetworkFailure, ProductDetailsModel>>
      get loadFailureOrSuccessOption => throw _privateConstructorUsedError;
  int get selectedCategoryIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<NetworkFailure, ProductDetailsModel>>
          loadFailureOrSuccessOption,
      int selectedCategoryIndex});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loadFailureOrSuccessOption = null,
    Object? selectedCategoryIndex = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadFailureOrSuccessOption: null == loadFailureOrSuccessOption
          ? _value.loadFailureOrSuccessOption
          : loadFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkFailure, ProductDetailsModel>>,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<NetworkFailure, ProductDetailsModel>>
          loadFailureOrSuccessOption,
      int selectedCategoryIndex});
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loadFailureOrSuccessOption = null,
    Object? selectedCategoryIndex = null,
  }) {
    return _then(_$_ProductState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadFailureOrSuccessOption: null == loadFailureOrSuccessOption
          ? _value.loadFailureOrSuccessOption
          : loadFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkFailure, ProductDetailsModel>>,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {required this.isLoading,
      required this.loadFailureOrSuccessOption,
      required this.selectedCategoryIndex});

  @override
  final bool isLoading;
  @override
  final Option<Either<NetworkFailure, ProductDetailsModel>>
      loadFailureOrSuccessOption;
  @override
  final int selectedCategoryIndex;

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, loadFailureOrSuccessOption: $loadFailureOrSuccessOption, selectedCategoryIndex: $selectedCategoryIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadFailureOrSuccessOption,
                    loadFailureOrSuccessOption) ||
                other.loadFailureOrSuccessOption ==
                    loadFailureOrSuccessOption) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      loadFailureOrSuccessOption, selectedCategoryIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final bool isLoading,
      required final Option<Either<NetworkFailure, ProductDetailsModel>>
          loadFailureOrSuccessOption,
      required final int selectedCategoryIndex}) = _$_ProductState;

  @override
  bool get isLoading;
  @override
  Option<Either<NetworkFailure, ProductDetailsModel>>
      get loadFailureOrSuccessOption;
  @override
  int get selectedCategoryIndex;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
