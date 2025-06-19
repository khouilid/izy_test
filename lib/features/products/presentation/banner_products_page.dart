import 'package:boilerplate_app/core/helpers/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate_app/features/products/providers/products_provider.dart';
import 'package:boilerplate_app/features/products/presentation/widgets/cart_item_card.dart';


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
        // Using ?? 0.0 to handle potentially null product.price
        return sum + ((product.price ?? 0.0) * quantity);
      });
    }

    return Scaffold(
      backgroundColor: ColorManager.aliceBlue,
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Column(
        // Changed to Column
        children: [
          Expanded(
            // ListView (or empty message) wrapped in Expanded
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
                            // If quantity becomes 0 or less from UI, treat as removal
                            ref
                                .read(productsApplicationProvider.notifier)
                                .removeProductFromBanner(product);
                          }
                        },
                      );
                    },
                  ),
          ),
          // Checkout section - only show if cart is not empty
          if (bannerItems.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize:
                    MainAxisSize.min, // So it doesn't expand unnecessarily
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total:',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        // Ensure the dollar sign is correctly displayed
                        '\$${totalPrice.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
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
                        backgroundColor:
                            ColorManager.chateauGreen, // Example styling
                        foregroundColor: Colors.white, // Text color
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        ref.read(productsApplicationProvider.notifier).checkout(
                              bannerItems,
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
    );
  }
}
