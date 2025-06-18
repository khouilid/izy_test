import 'package:boilerplate_app/features/products/application/products_application.dart';
import 'package:boilerplate_app/features/products/application/products_state.dart';
import 'package:boilerplate_app/features/products/domain/product_model.dart';
import 'package:boilerplate_app/features/products/infrastructure/repositories/products_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsApplicationProvider =
    StateNotifierProvider<ProductsApplicationNotifier, ProductsState>((ref) {
  final repository = ref.watch(productsRepositoryProvider.notifier);
  return ProductsApplicationNotifier(repository);
});

// provider for products list
final productsListProvider = StateProvider<List<ProductModel>>((ref) => []);

// provider for banner as list of map<ProductModel, int>
final bannerProvider = StateProvider<List<Map<ProductModel, int>>>((ref) => []);
