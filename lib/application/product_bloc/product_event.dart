part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.getProductDetailsList() = _GetProductDetailsList;
  const factory ProductEvent.selectCategory(int index) = _SelectCategory;
}
