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



  // add product to banner
  const factory ProductsState.addProductToBanner(
    ProductModel product,
    int quantity,
  ) = _AddProductToBanner;

  // Update product quantity in banner
  const factory ProductsState.updateProductQuantityInBanner(
    ProductModel product,
    int newQuantity,
  ) = _UpdateProductQuantityInBanner;

  // Remove product from banner
  const factory ProductsState.removeProductFromBanner(
    ProductModel product,
  ) = _RemoveProductFromBanner;



  const factory ProductsState.checking() = _Checking;
  const factory ProductsState.checked() = _Checked;

}
