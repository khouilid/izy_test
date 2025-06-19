import 'package:izy_test/core/presentation/app_widget.dart';
import 'package:izy_test/features/products/presentation/products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    Logger().e(details);
  };
  runApp(
    const ProviderScope(
      child: AppWidget(
        initialScreen: ProductsPage(),
      ),
    ),
  );
}
