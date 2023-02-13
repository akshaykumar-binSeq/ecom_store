import 'package:dartz/dartz.dart';
import 'package:ecom_store/domain/core/network/network_failures.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';

abstract class IProductRepository {
  Future<Either<NetworkFailure, ProductDetailsModel>> getProductDetailsList();
}
