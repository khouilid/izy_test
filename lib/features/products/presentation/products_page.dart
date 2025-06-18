import 'package:boilerplate_app/core/helpers/color_manager.dart';
import 'package:boilerplate_app/features/products/domain/product_model.dart';
import 'package:boilerplate_app/features/products/presentation/widgets/products_list_item.dart';
import 'package:boilerplate_app/features/products/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductsPage extends StatefulHookConsumerWidget {
  const ProductsPage({super.key});
  @override
  ConsumerState<ProductsPage> createState() => _OverViewObservation();
}

class _OverViewObservation extends ConsumerState<ProductsPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      ref.read(productsApplicationProvider.notifier).getAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    // list of products
    ref.listen(productsApplicationProvider, (previous, next) {
      next.maybeMap(
        success: (products) {
          ref.read(productsListProvider.notifier).state = products.products;
        },
        orElse: () {},
      );
    });

    return Scaffold(
      backgroundColor: ColorManager.aliceBlue,
      appBar: AppBar(
        title: Text('Products ${ref.watch(bannerProvider).length}'),
      ),
      body: ref.watch(productsApplicationProvider).maybeMap(
            loading: (value) =>
                const Center(child: CircularProgressIndicator()),
            orElse: () {
              final products = ref.watch(productsListProvider);
              return products.isEmpty
                  ? const Center(
                      child: Text('No products found'),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: ProductCard(
                              product: product,
                              onQuantityChanged: (quantity) {
                                final banner =
                                    ref.read(bannerProvider.notifier).state;
                                final index = banner.indexWhere(
                                    (item) => item.keys.first.id == product.id);

                                if (index != -1) {
                                  // Product exists, update the quantity
                                  final updatedBanner =
                                      List<Map<ProductModel, int>>.from(banner);
                                  updatedBanner[index] = {product: quantity};
                                  ref.read(bannerProvider.notifier).state =
                                      updatedBanner;
                                } else {
                                  // Product doesn't exist, add it
                                  ref.read(bannerProvider.notifier).state = [
                                    ...banner,
                                    {product: quantity}
                                  ];
                                }
                              }),
                        );
                      },
                    );
            },
          ),
    );
  }
}
