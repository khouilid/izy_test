import 'package:izy_test/features/products/domain/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../infrastructure/repositories/products_repository.dart';
import 'products_state.dart';

class ProductsApplicationNotifier extends StateNotifier<ProductsState> {
  final ProductsRepository _repository;

  ProductsApplicationNotifier(this._repository)
      : super(const ProductsState.initial());

  Future<void> getAllProducts() async {
    state = const ProductsState.loading();

    final result = await _repository.getAllProducts();

    result.fold(
      (failure) => state = ProductsState.error(failure),
      (products) => state = ProductsState.success(products),
    );
  }

  Future<void> addProductToBanner(ProductModel product, int quantity) async {
    state = ProductsState.addProductToBanner(product, quantity);
  }

  Future<void> updateProductQuantityInBanner(
      ProductModel product, int newQuantity) async {
    state = ProductsState.updateProductQuantityInBanner(product, newQuantity);
  }

  Future<void> removeProductFromBanner(ProductModel product) async {
    state = ProductsState.removeProductFromBanner(product);
  }

  Future<void> checkout(List<Map<ProductModel, int>> cartItems) async {
    state = const ProductsState.checking();
    // this delay is for testing purposes simulating a network delay
    Future.delayed(const Duration(seconds: 3), () async {
      final result = await _repository.checkout(cartItems);
      result.fold(
        (failure) => state = ProductsState.error(failure),
        (products) => state = ProductsState.checked(),
      );
    });
  }
}
