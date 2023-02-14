import 'package:dartz/dartz.dart';
import 'package:ecom_store/domain/core/network/network_failures.dart';
import 'package:ecom_store/domain/product/i_product_repository.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepository productRepository;
  ProductBloc(this.productRepository) : super(ProductState.initial()) {
    on<_GetProductDetailsList>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        loadFailureOrSuccessOption: none(),
      ));

      Either<NetworkFailure, ProductDetailsModel>? failureOrSuccess;

      failureOrSuccess = await productRepository.getProductDetailsList();
      // failureOrSuccess.fold((l) {}, ((r) => log("message")));

      emit(state.copyWith(
        isLoading: false,
        loadFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });

    on<_SelectCategory>((event, emit) {
      emit(state.copyWith(selectedCategoryIndex: event.index));
    });
  }
}
