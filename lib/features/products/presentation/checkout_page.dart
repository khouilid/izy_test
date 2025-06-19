import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:izy_test/core/helpers/color_manager.dart';
import 'package:izy_test/features/products/providers/products_provider.dart';

class CheckoutPage extends ConsumerWidget {
  const CheckoutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(productsApplicationProvider).maybeMap(
          checking: (_) => true,
          orElse: () => false,
        );

    final cartItems = ref.watch(bannerProvider);
    
    double totalPrice = 0.0;
    if (cartItems.isNotEmpty) {
      totalPrice = cartItems.fold(0.0, (sum, item) {
        final product = item.keys.first;
        final quantity = item.values.first;
        return sum + ((product.price) * quantity);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: ColorManager.aliceBlue,
      ),
      backgroundColor: ColorManager.aliceBlue,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Summary',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                final product = item.keys.first;
                final quantity = item.values.first;
                return ListTile(
                  leading: product.images.isNotEmpty
                      ? Image.network(product.images.first,
                          width: 50, height: 50, fit: BoxFit.cover)
                      : const Icon(Icons.image_not_supported, size: 50),
                  title: Text(product.title),
                  subtitle: Text('Quantity: $quantity'),
                  trailing: Text('\$${((product.price) * quantity).toStringAsFixed(2)}'),
                );
              },
            ),
            const Divider(height: 22.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Items:',
                    style: Theme.of(context).textTheme.titleMedium),
                Text(
                    '${cartItems.fold<int>(0, (sum, item) => sum + item.values.first)}',
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Grand Total:',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold)),
                Text('\$${totalPrice.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor)),
              ],
            ),
            const SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.chateauGreen,
                  foregroundColor: ColorManager.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                onPressed: isLoading
                    ? null
                    : () {
                        ref
                            .read(productsApplicationProvider.notifier)
                            .checkout(cartItems);
                      },
                child: isLoading
                    ? SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                            strokeWidth: 3, color: ColorManager.white),
                      )
                    : const Text('Place Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
