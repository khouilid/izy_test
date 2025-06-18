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
}
