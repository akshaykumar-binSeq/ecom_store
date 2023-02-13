import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecom_store/domain/core/network/api_provider.dart';
import 'package:ecom_store/domain/core/network/network_failures.dart';
import 'package:ecom_store/domain/product/i_product_repository.dart';
import 'package:ecom_store/infrastructure/data_sources/remote_data/api.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';

class ProductRepository implements IProductRepository {
  ApiProvider? apiClient;

  ProductRepository() {
    apiClient ??= ApiProvider();
  }

  Dio dio = Dio();

  @override
  Future<Either<NetworkFailure, ProductDetailsModel>>
      getProductDetailsList() async {
    try {
      Response response =
          await apiClient!.getJsonInstance().get(Api.getProductDetails);

      return right(ProductDetailsModel.fromJson(response.data.first));
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 401) {
          return left(
              NetworkFailure.unAuthorized(e.response!.data["message"] ?? ''));
        }
        return left(NetworkFailure.serverError(
            "Status Code ${e.response!.statusCode}"));
      } else if (e.toString().contains('Connecting timed out')) {
        return left(const NetworkFailure.serverTimeOut());
      }
      return left(const NetworkFailure.unexpected());
    } catch (e) {
      return left(const NetworkFailure.unexpected());
    }
  }
}
