import 'dart:async';
import 'package:boilerplate_app/config/infrastructure/helpers/repository_helper.dart';
import 'package:boilerplate_app/features/products/domain/product_model.dart';
import 'package:boilerplate_app/features/products/infrastructure/services/products_api_service.dart';
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
}
