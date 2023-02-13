part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required bool isLoading,
    required Option<Either<NetworkFailure, ProductDetailsModel>>
        loadFailureOrSuccessOption,
    required int selectedCategoryIndex,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
        isLoading: false,
        loadFailureOrSuccessOption: none(),
        selectedCategoryIndex: 0,
      );
}
