import 'package:izy_test/core/helpers/color_manager.dart';
import 'package:izy_test/features/products/domain/product_model.dart';
import 'package:izy_test/features/products/presentation/banner_products_page.dart';
import 'package:izy_test/features/products/presentation/widgets/product_card.dart';
import 'package:izy_test/features/products/providers/products_provider.dart';
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
    final bannerItems = ref.watch(bannerProvider);

    ref.listen(productsApplicationProvider, (previous, next) {
      next.maybeMap(
        success: (products) {
          ref.read(productsListProvider.notifier).state = products.products;
        },
        addProductToBanner: (data) {
          final banner = ref.read(bannerProvider.notifier).state;
          final index = banner
              .indexWhere((item) => item.keys.first.id == data.product.id);

          if (index != -1) {
            final updatedBanner = List<Map<ProductModel, int>>.from(banner);
            updatedBanner[index] = {data.product: data.quantity};
            ref.read(bannerProvider.notifier).state = updatedBanner;
          } else {
            ref.read(bannerProvider.notifier).state = [
              ...banner,
              {data.product: data.quantity}
            ];
          }
        },
        updateProductQuantityInBanner: (data) {
          final banner = ref.read(bannerProvider.notifier).state;
          final index = banner
              .indexWhere((item) => item.keys.first.id == data.product.id);

          if (index != -1) {
            final updatedBanner = List<Map<ProductModel, int>>.from(banner);
            if (data.newQuantity > 0) {
              updatedBanner[index] = {data.product: data.newQuantity};
              ref.read(bannerProvider.notifier).state = updatedBanner;
            } else {
              updatedBanner.removeAt(index);
              ref.read(bannerProvider.notifier).state = updatedBanner;
            }
          }
        },
        removeProductFromBanner: (data) {
          final banner = ref.read(bannerProvider.notifier).state;
          final updatedBanner = List<Map<ProductModel, int>>.from(banner);

          updatedBanner
              .removeWhere((item) => item.keys.first.id == data.product.id);
          ref.read(bannerProvider.notifier).state = updatedBanner;
        },
        checked: (value) {
          ref.invalidate(bannerProvider);
          Navigator.popUntil(context, ModalRoute.withName('/'));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                duration: Duration(seconds: 2),
                backgroundColor: ColorManager.chateauGreen,
                content: Text('Your order has been placed successfully!')),
          );
        },
        orElse: () {},
      );
    });

    return Scaffold(
      backgroundColor: ColorManager.aliceBlue,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Products'),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_basket_rounded),
                tooltip: 'View Banner Products',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BannerProductsPage()),
                  );
                },
              ),
              if (bannerItems.length > 0)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: ColorManager.valentineRed,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      bannerItems.length.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
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
                        final quantity = ref
                            .watch(bannerProvider)
                            .firstWhere(
                              (item) => item.keys.first.id == product.id,
                              orElse: () => {product: 0},
                            )
                            .values
                            .first;
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: ProductCard(
                              product: product,
                              quantity: quantity,
                              onQuantityChanged: (quantity) {
                                ref
                                    .read(productsApplicationProvider.notifier)
                                    .addProductToBanner(product, quantity);
                              }),
                        );
                      },
                    );
            },
          ),
    );
  }
}
