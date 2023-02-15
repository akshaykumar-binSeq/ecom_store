import 'package:ecom_store/application/product_bloc/product_bloc.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_repository.dart';
import 'package:ecom_store/presentation/screen/product/widgets/product_category_list_view.dart';
import 'package:ecom_store/presentation/screen/product/widgets/product_details_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductHomeScreen extends StatelessWidget {
  const ProductHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(ProductRepository())
        ..add(const ProductEvent.getProductDetailsList()),
      child: Scaffold(
        body: BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
          return state.isLoading
              ? SizedBox(
                  width: screenWidth,
                  height: screenHeight,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : state.loadFailureOrSuccessOption.fold(
                  () => Container(),
                  (either) {
                    return either.fold(
                      (failure) {
                        return failure.map(
                            unAuthorized: (v) => Center(child: Text(v.message)),
                            unexpected: (v) => const Center(
                                child:
                                    Text('Unexpected Error, Contact Support')),
                            serverError: (v) => Center(
                                child: Text(
                                    'Server Error Code: //${v.errorCode}')),
                            serverTimeOut: (v) => const Center(
                                child: Text('Server Timed-out, Retry')));
                      },
                      (res) {
                        List<TableMenuList> response = res.tableMenuList ?? [];
                        return Column(
                          children: [
                            ProductCategoryListView(categoryDataList: response),
                            Expanded(
                              child: ProductDetailsListView(
                                  categoryDishList:
                                      response[state.selectedCategoryIndex]
                                          .categoryDishes),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
        }),
      ),
    );
  }
}
