import 'dart:developer';

import 'package:flutter_cubit_app/data/dataprovider/product_api.dart';
import 'package:flutter_cubit_app/data/model/product.dart';

class ProductApiRepository {
  final ProductApi? productApi;
  ProductApiRepository({required this.productApi});

  Future<List<Product?>?> getProductList() async {
    try {
      final productWrapper = await productApi!.getProducts();

      return productWrapper.products;
    } catch (e) {
      log(e.toString());
    }
    return [Product.fromJson({})];
  }
}
