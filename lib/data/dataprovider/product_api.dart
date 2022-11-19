import 'package:dio/dio.dart';
import 'package:flutter_cubit_app/data/model/products.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class ProductApi {
  factory ProductApi(Dio dio) = _ProductApi;

  @GET('/products')
  Future<ProductWrapper> getProducts();
}
