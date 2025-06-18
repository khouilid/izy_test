import 'package:boilerplate_app/config/providers/network_provider.dart';
import 'package:boilerplate_app/features/products/infrastructure/DTO/product_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:boilerplate_app/config/infrastructure/helpers/remote_service_helper.dart';
part 'products_api_service.g.dart';

@Riverpod()
class ProductsApiService extends _$ProductsApiService with RemoteServiceHelper {
  late Dio _dio;

  @override
  Future<void> build() async {
    _dio = ref.watch(dioProvider);
  }

  Future<List<ProductDto>> getAllProducts() async {
    return remoteResponseHandler(
      _dio.get('/products'),
      (data) {
        return (data["products"] as List)
            .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }
}
