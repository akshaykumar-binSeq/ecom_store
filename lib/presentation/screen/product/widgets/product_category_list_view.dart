import 'package:ecom_store/application/product_bloc/product_bloc.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/infrastructure/repositories/product/product_details_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCategoryListView extends StatelessWidget {
  final List<TableMenuList> categoryDataList;

  const ProductCategoryListView({
    Key? key,
    required this.categoryDataList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 0,
      child: Container(
        height: 50,
        width: screenWidth,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categoryDataList.length,
            itemBuilder: (BuildContext context, int index) {
              return _categoryViewWidget(
                index,
                categoryDataList[index],
              );
            }),
      ),
    );
  }

  Widget _categoryViewWidget(index, TableMenuList? categoryData) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return SizedBox(
          height: 50,
          child: InkWell(
            onTap: () => context
                .read<ProductBloc>()
                .add(ProductEvent.selectCategory(index)),
            child: AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 600),
                decoration: BoxDecoration(
                  border: state.selectedCategoryIndex != index
                      ? null
                      : Border(
                          bottom:
                              BorderSide(color: Colors.red[800]!, width: 2.5),
                        ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Text(
                      categoryData?.menuCategory ?? '',
                      style: TextStyle(
                          color: state.selectedCategoryIndex != index
                              ? Colors.grey[700]
                              : Colors.red[800],
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )),
          ),
        );
      },
    );
  }
}
