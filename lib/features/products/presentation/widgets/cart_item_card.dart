import 'package:flutter/material.dart';
import 'package:izy_test/features/products/domain/product_model.dart'; // Adjust if your project name is different
import 'package:izy_test/core/helpers/color_manager.dart'; // Assuming ColorManager is used

class CartItemCard extends StatelessWidget {
  final ProductModel product;
  final int quantity;
  final VoidCallback onRemoveItem;
  final ValueChanged<int> onUpdateQuantity; // Passes the new quantity

  const CartItemCard({
    super.key,
    required this.product,
    required this.quantity,
    required this.onRemoveItem,
    required this.onUpdateQuantity,
  });

  @override
  Widget build(BuildContext context) {
    final totalPrice = product.price * quantity;

    return Card(
      elevation: 0,
      color: ColorManager.white, // Or your preferred card color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            if (product.images.isNotEmpty)
              SizedBox(
                width: 100,
                height: 100,
                child: Image.network(
                  product.images.first,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image_not_supported, size: 50),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              )
            else
              SizedBox(
                width: 100,
                height: 100,
                child: Icon(Icons.image_not_supported,
                    size: 50, color: Colors.grey[400]),
              ),
            const SizedBox(width: 16.0),
            // Product Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Price: \$${product.price.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            onPressed: quantity > 1
                                ? () => onUpdateQuantity(quantity - 1)
                                : null, // Prevent quantity < 1
                            tooltip: 'Decrease quantity',
                            iconSize: 20,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          ),
                          Text('$quantity',
                              style: Theme.of(context).textTheme.bodyMedium),
                          IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () => onUpdateQuantity(quantity + 1),
                            tooltip: 'Increase quantity',
                            iconSize: 20,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.delete_outline,
                            color: ColorManager.valentineRed),
                        onPressed: onRemoveItem,
                        tooltip: 'Remove item',
                        iconSize: 20,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                  Text(
                    'Total: \$${totalPrice.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.pictonBlue),
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
