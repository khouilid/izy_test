// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ProductsState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ProductsState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$SuccessImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl(final List<ProductModel> products)
      : _products = products,
        super._();

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends ProductsState {
  const factory _Success(final List<ProductModel> products) = _$SuccessImpl;
  const _Success._() : super._();

  List<ProductModel> get products;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(this.failure) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ProductsState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends ProductsState {
  const factory _Error(final Failure failure) = _$ErrorImpl;
  const _Error._() : super._();

  Failure get failure;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToBannerImplCopyWith<$Res> {
  factory _$$AddProductToBannerImplCopyWith(_$AddProductToBannerImpl value,
          $Res Function(_$AddProductToBannerImpl) then) =
      __$$AddProductToBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, int quantity});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddProductToBannerImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$AddProductToBannerImpl>
    implements _$$AddProductToBannerImplCopyWith<$Res> {
  __$$AddProductToBannerImplCopyWithImpl(_$AddProductToBannerImpl _value,
      $Res Function(_$AddProductToBannerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$AddProductToBannerImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddProductToBannerImpl extends _AddProductToBanner {
  const _$AddProductToBannerImpl(this.product, this.quantity) : super._();

  @override
  final ProductModel product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'ProductsState.addProductToBanner(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToBannerImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToBannerImplCopyWith<_$AddProductToBannerImpl> get copyWith =>
      __$$AddProductToBannerImplCopyWithImpl<_$AddProductToBannerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return addProductToBanner(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return addProductToBanner?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (addProductToBanner != null) {
      return addProductToBanner(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) {
    return addProductToBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) {
    return addProductToBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (addProductToBanner != null) {
      return addProductToBanner(this);
    }
    return orElse();
  }
}

abstract class _AddProductToBanner extends ProductsState {
  const factory _AddProductToBanner(
          final ProductModel product, final int quantity) =
      _$AddProductToBannerImpl;
  const _AddProductToBanner._() : super._();

  ProductModel get product;
  int get quantity;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToBannerImplCopyWith<_$AddProductToBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductQuantityInBannerImplCopyWith<$Res> {
  factory _$$UpdateProductQuantityInBannerImplCopyWith(
          _$UpdateProductQuantityInBannerImpl value,
          $Res Function(_$UpdateProductQuantityInBannerImpl) then) =
      __$$UpdateProductQuantityInBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, int newQuantity});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$UpdateProductQuantityInBannerImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res,
        _$UpdateProductQuantityInBannerImpl>
    implements _$$UpdateProductQuantityInBannerImplCopyWith<$Res> {
  __$$UpdateProductQuantityInBannerImplCopyWithImpl(
      _$UpdateProductQuantityInBannerImpl _value,
      $Res Function(_$UpdateProductQuantityInBannerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? newQuantity = null,
  }) {
    return _then(_$UpdateProductQuantityInBannerImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == newQuantity
          ? _value.newQuantity
          : newQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$UpdateProductQuantityInBannerImpl
    extends _UpdateProductQuantityInBanner {
  const _$UpdateProductQuantityInBannerImpl(this.product, this.newQuantity)
      : super._();

  @override
  final ProductModel product;
  @override
  final int newQuantity;

  @override
  String toString() {
    return 'ProductsState.updateProductQuantityInBanner(product: $product, newQuantity: $newQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductQuantityInBannerImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.newQuantity, newQuantity) ||
                other.newQuantity == newQuantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, newQuantity);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductQuantityInBannerImplCopyWith<
          _$UpdateProductQuantityInBannerImpl>
      get copyWith => __$$UpdateProductQuantityInBannerImplCopyWithImpl<
          _$UpdateProductQuantityInBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return updateProductQuantityInBanner(product, newQuantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return updateProductQuantityInBanner?.call(product, newQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (updateProductQuantityInBanner != null) {
      return updateProductQuantityInBanner(product, newQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) {
    return updateProductQuantityInBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) {
    return updateProductQuantityInBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (updateProductQuantityInBanner != null) {
      return updateProductQuantityInBanner(this);
    }
    return orElse();
  }
}

abstract class _UpdateProductQuantityInBanner extends ProductsState {
  const factory _UpdateProductQuantityInBanner(
          final ProductModel product, final int newQuantity) =
      _$UpdateProductQuantityInBannerImpl;
  const _UpdateProductQuantityInBanner._() : super._();

  ProductModel get product;
  int get newQuantity;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProductQuantityInBannerImplCopyWith<
          _$UpdateProductQuantityInBannerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductFromBannerImplCopyWith<$Res> {
  factory _$$RemoveProductFromBannerImplCopyWith(
          _$RemoveProductFromBannerImpl value,
          $Res Function(_$RemoveProductFromBannerImpl) then) =
      __$$RemoveProductFromBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$RemoveProductFromBannerImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$RemoveProductFromBannerImpl>
    implements _$$RemoveProductFromBannerImplCopyWith<$Res> {
  __$$RemoveProductFromBannerImplCopyWithImpl(
      _$RemoveProductFromBannerImpl _value,
      $Res Function(_$RemoveProductFromBannerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveProductFromBannerImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$RemoveProductFromBannerImpl extends _RemoveProductFromBanner {
  const _$RemoveProductFromBannerImpl(this.product) : super._();

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'ProductsState.removeProductFromBanner(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductFromBannerImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductFromBannerImplCopyWith<_$RemoveProductFromBannerImpl>
      get copyWith => __$$RemoveProductFromBannerImplCopyWithImpl<
          _$RemoveProductFromBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return removeProductFromBanner(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return removeProductFromBanner?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (removeProductFromBanner != null) {
      return removeProductFromBanner(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) {
    return removeProductFromBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) {
    return removeProductFromBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (removeProductFromBanner != null) {
      return removeProductFromBanner(this);
    }
    return orElse();
  }
}

abstract class _RemoveProductFromBanner extends ProductsState {
  const factory _RemoveProductFromBanner(final ProductModel product) =
      _$RemoveProductFromBannerImpl;
  const _RemoveProductFromBanner._() : super._();

  ProductModel get product;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveProductFromBannerImplCopyWith<_$RemoveProductFromBannerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckingImplCopyWith<$Res> {
  factory _$$CheckingImplCopyWith(
          _$CheckingImpl value, $Res Function(_$CheckingImpl) then) =
      __$$CheckingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$CheckingImpl>
    implements _$$CheckingImplCopyWith<$Res> {
  __$$CheckingImplCopyWithImpl(
      _$CheckingImpl _value, $Res Function(_$CheckingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckingImpl extends _Checking {
  const _$CheckingImpl() : super._();

  @override
  String toString() {
    return 'ProductsState.checking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return checking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return checking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class _Checking extends ProductsState {
  const factory _Checking() = _$CheckingImpl;
  const _Checking._() : super._();
}

/// @nodoc
abstract class _$$CheckedImplCopyWith<$Res> {
  factory _$$CheckedImplCopyWith(
          _$CheckedImpl value, $Res Function(_$CheckedImpl) then) =
      __$$CheckedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckedImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$CheckedImpl>
    implements _$$CheckedImplCopyWith<$Res> {
  __$$CheckedImplCopyWithImpl(
      _$CheckedImpl _value, $Res Function(_$CheckedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckedImpl extends _Checked {
  const _$CheckedImpl() : super._();

  @override
  String toString() {
    return 'ProductsState.checked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> products) success,
    required TResult Function(Failure failure) error,
    required TResult Function(ProductModel product, int quantity)
        addProductToBanner,
    required TResult Function(ProductModel product, int newQuantity)
        updateProductQuantityInBanner,
    required TResult Function(ProductModel product) removeProductFromBanner,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return checked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> products)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(ProductModel product, int quantity)? addProductToBanner,
    TResult? Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult? Function(ProductModel product)? removeProductFromBanner,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return checked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> products)? success,
    TResult Function(Failure failure)? error,
    TResult Function(ProductModel product, int quantity)? addProductToBanner,
    TResult Function(ProductModel product, int newQuantity)?
        updateProductQuantityInBanner,
    TResult Function(ProductModel product)? removeProductFromBanner,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToBanner value) addProductToBanner,
    required TResult Function(_UpdateProductQuantityInBanner value)
        updateProductQuantityInBanner,
    required TResult Function(_RemoveProductFromBanner value)
        removeProductFromBanner,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
  }) {
    return checked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToBanner value)? addProductToBanner,
    TResult? Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult? Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
  }) {
    return checked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToBanner value)? addProductToBanner,
    TResult Function(_UpdateProductQuantityInBanner value)?
        updateProductQuantityInBanner,
    TResult Function(_RemoveProductFromBanner value)? removeProductFromBanner,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked(this);
    }
    return orElse();
  }
}

abstract class _Checked extends ProductsState {
  const factory _Checked() = _$CheckedImpl;
  const _Checked._() : super._();
}
