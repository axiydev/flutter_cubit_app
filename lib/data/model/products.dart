import 'package:flutter_cubit_app/data/model/int_to_string_converter.dart';
import 'package:flutter_cubit_app/data/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'products.freezed.dart';
part 'products.g.dart';

@freezed
class ProductWrapper with _$ProductWrapper {
  factory ProductWrapper({
    @Default(<Product>[]) List<Product> products,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'total') @IntToStringConverterNumber() int? total,
    @JsonKey(name: 'skip') int? skip,
    @JsonKey(name: 'limit') int? limit,
  }) = _ProductWrapper;

  factory ProductWrapper.fromJson(Map<String, dynamic> json) =>
      _$ProductWrapperFromJson(json);
}
