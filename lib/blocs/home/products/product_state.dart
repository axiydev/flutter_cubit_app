part of 'products_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();
  @override
  List<Object> get props => [];
}

class ProductInitialState extends ProductState {}

// ignore: must_be_immutable
class ProductLoadingState extends ProductState {
  bool isLoading;
  ProductLoadingState(this.isLoading);
}

// ignore: must_be_immutable
class ProductErrorState extends ProductState {
  Object error;
  ProductErrorState(this.error);
}

// ignore: must_be_immutable
class ProductDataState extends ProductState {
  List<Product?> products;
  ProductDataState(this.products);
}
