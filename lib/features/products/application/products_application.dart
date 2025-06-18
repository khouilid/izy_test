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
}
