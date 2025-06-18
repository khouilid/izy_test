import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../config/domain/failure.dart';
import '../domain/product_model.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const ProductsState._();
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.loading() = _Loading;
  const factory ProductsState.success(
    List<ProductModel> products,
  ) = _Success;
  const factory ProductsState.error(Failure failure) = _Error;
}
