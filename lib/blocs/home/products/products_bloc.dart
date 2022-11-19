// import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_app/data/model/product.dart';
import 'package:flutter_cubit_app/data/repository/product_api_repository.dart';
part 'products_event.dart';
part 'product_state.dart';

class ProductsBloc extends Bloc<ProductEvent, ProductState> {
  final ProductApiRepository productRepository;
  ProductsBloc({required this.productRepository})
      : super(ProductInitialState()) {
    on<ProductEvent>(onProductEvent);
  }

  void onProductEvent(event, emit) async {
    if (event is ProductLoadDataEvent) {
      emit(ProductLoadingState(true));
      try {
        final productsData = await productRepository.getProductList();
        emit(ProductLoadingState(false));
        emit(ProductDataState(productsData!));
      } catch (e) {
        emit(ProductLoadingState(false));
        emit(ProductErrorState(e));
      }
    }
  }
}
