import 'dart:async';
import 'package:izy_test/config/infrastructure/helpers/repository_helper.dart';
import 'package:izy_test/features/products/domain/product_model.dart';
import 'package:izy_test/features/products/infrastructure/DTO/product_dto.dart';
import 'package:izy_test/features/products/infrastructure/services/products_api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_repository.g.dart';

@Riverpod()
class ProductsRepository extends _$ProductsRepository with RepositoryHelper {
  late ProductsApiService _apiService;

  @override
  Future<void> build() async {
    _apiService = ref.read(productsApiServiceProvider.notifier);
  }

  FutureEitherFailureOr<List<ProductModel>> getAllProducts() async {
    return handleData(
      _apiService.getAllProducts(),
      (data) async => data.map((e) => e.toDomain()).toList(),
    );
  }

  FutureEitherFailureOr<void> checkout(
      List<Map<ProductModel, int>> cartItems) async {
    final cartItemsDto = cartItems
        .map((item) => item.map((product, quantity) =>
            MapEntry(ProductDto.fromDomain(product), quantity)))
        .toList();
    return handleData(
      _apiService.checkout(cartItemsDto),
      (data) async => data,
    );
  }
}
