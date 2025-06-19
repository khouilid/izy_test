import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/product_model.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._(); // Private constructor for implementing methods like toDomain

  const factory ProductDto({
    int? id,
    String? title,
    String? description,
    String? category,
    double? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    List<String>? images,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  ProductModel toDomain() {
    return ProductModel(
      id: id ?? 0,
      title: title ?? '',
      description: description ?? '',
      category: category ?? '',
      price: price ?? 0,
      discountPercentage: discountPercentage ?? 0,
      rating: rating ?? 0,
      stock: stock ?? 0,
      brand: brand ?? '',
      images: images ?? [],
    );
  }

  factory ProductDto.fromDomain(ProductModel product) {
    return ProductDto(
      id: product.id,
      title: product.title,
      description: product.description,
      category: product.category,
      price: product.price,
      discountPercentage: product.discountPercentage,
      rating: product.rating,
      stock: product.stock,
      brand: product.brand,
      images: product.images,
    );
  }

  FormData toFormData(List<Map<ProductDto, int>> cartItems) {
    final formData = FormData();
    for (final item in cartItems) {
      final product = item.keys.first;
      final quantity = item.values.first;
      formData.fields.add(MapEntry('product_id', product.id.toString()));
      formData.fields.add(MapEntry('quantity', quantity.toString()));
    }
    return formData;
  }
}
