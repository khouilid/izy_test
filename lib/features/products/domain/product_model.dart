import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required String brand,
    required List<String> images,
  }) = _ProductModel;





  // empty factory
  //   factory ProductModel.empty() = ProductModel(
  //   id: -1,
  //   title: '',
  //   description: '',
  //   category: '',
  //   price: 0,
  //   discountPercentage: 0,
  //   rating: 0,
  //   stock: 0,
  //   brand: '',
  //   images: [],
  // );
}
