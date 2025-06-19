import 'package:izy_test/core/helpers/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:izy_test/features/products/presentation/checkout_page.dart';
import 'package:izy_test/features/products/providers/products_provider.dart';
import 'package:izy_test/features/products/presentation/widgets/cart_item_card.dart';

class BannerProductsPage extends ConsumerWidget {
  const BannerProductsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bannerItems = ref.watch(bannerProvider);

    double totalPrice = 0.0;
    if (bannerItems.isNotEmpty) {
      totalPrice = bannerItems.fold(0.0, (sum, item) {
        final product = item.keys.first;
        final quantity = item.values.first;
        return sum + ((product.price) * quantity);
      });
    }

    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorManager.aliceBlue,
        appBar: AppBar(
          title: const Text('Your Cart'),
        ),
        body: Column(
          children: [
            Expanded(
              child: bannerItems.isEmpty
                  ? const Center(
                      child: Text('Your cart is empty.'),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: bannerItems.length,
                      itemBuilder: (context, index) {
                        final cartEntry = bannerItems[index];
                        final product = cartEntry.keys.first;
                        final quantity = cartEntry.values.first;

                        return CartItemCard(
                          product: product,
                          quantity: quantity,
                          onRemoveItem: () {
                            ref
                                .read(productsApplicationProvider.notifier)
                                .removeProductFromBanner(product);
                          },
                          onUpdateQuantity: (newQuantity) {
                            if (newQuantity > 0) {
                              ref
                                  .read(productsApplicationProvider.notifier)
                                  .updateProductQuantityInBanner(
                                      product, newQuantity);
                            } else {
                              ref
                                  .read(productsApplicationProvider.notifier)
                                  .removeProductFromBanner(product);
                            }
                          },
                        );
                      },
                    ),
            ),
            if (bannerItems.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          '\$${totalPrice.toStringAsFixed(2)}',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorManager.chateauGreen,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CheckoutPage(),
                            ),
                          );
                        },
                        child: ref.watch(productsApplicationProvider).maybeMap(
                              checking: (value) =>
                                  const CircularProgressIndicator(),
                              checked: (value) => const Text('Checked'),
                              orElse: () => const Text('Proceed to Checkout'),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
