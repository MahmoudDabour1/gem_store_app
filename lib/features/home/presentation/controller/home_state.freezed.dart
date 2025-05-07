// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(List<FeaturedProductsModel> featuredProducts)
        featuredProductsSuccess,
    required TResult Function(String errorMessage) featuredProductsFailure,
    required TResult Function() selectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult? Function(String errorMessage)? featuredProductsFailure,
    TResult? Function()? selectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult Function(String errorMessage)? featuredProductsFailure,
    TResult Function()? selectedCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsSuccess value)
        featuredProductsSuccess,
    required TResult Function(FeaturedProductsFailure value)
        featuredProductsFailure,
    required TResult Function(SelectedCategory value) selectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult? Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult? Function(SelectedCategory value)? selectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult Function(SelectedCategory value)? selectedCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeInitialImplCopyWith<$Res> {
  factory _$$HomeInitialImplCopyWith(
          _$HomeInitialImpl value, $Res Function(_$HomeInitialImpl) then) =
      __$$HomeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeInitialImpl>
    implements _$$HomeInitialImplCopyWith<$Res> {
  __$$HomeInitialImplCopyWithImpl(
      _$HomeInitialImpl _value, $Res Function(_$HomeInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeInitialImpl implements HomeInitial {
  const _$HomeInitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(List<FeaturedProductsModel> featuredProducts)
        featuredProductsSuccess,
    required TResult Function(String errorMessage) featuredProductsFailure,
    required TResult Function() selectedCategory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult? Function(String errorMessage)? featuredProductsFailure,
    TResult? Function()? selectedCategory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult Function(String errorMessage)? featuredProductsFailure,
    TResult Function()? selectedCategory,
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
    required TResult Function(HomeInitial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsSuccess value)
        featuredProductsSuccess,
    required TResult Function(FeaturedProductsFailure value)
        featuredProductsFailure,
    required TResult Function(SelectedCategory value) selectedCategory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult? Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult? Function(SelectedCategory value)? selectedCategory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult Function(SelectedCategory value)? selectedCategory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitial implements HomeState {
  const factory HomeInitial() = _$HomeInitialImpl;
}

/// @nodoc
abstract class _$$FeaturedProductsLoadingImplCopyWith<$Res> {
  factory _$$FeaturedProductsLoadingImplCopyWith(
          _$FeaturedProductsLoadingImpl value,
          $Res Function(_$FeaturedProductsLoadingImpl) then) =
      __$$FeaturedProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeaturedProductsLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$FeaturedProductsLoadingImpl>
    implements _$$FeaturedProductsLoadingImplCopyWith<$Res> {
  __$$FeaturedProductsLoadingImplCopyWithImpl(
      _$FeaturedProductsLoadingImpl _value,
      $Res Function(_$FeaturedProductsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeaturedProductsLoadingImpl implements FeaturedProductsLoading {
  const _$FeaturedProductsLoadingImpl();

  @override
  String toString() {
    return 'HomeState.featuredProductsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProductsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(List<FeaturedProductsModel> featuredProducts)
        featuredProductsSuccess,
    required TResult Function(String errorMessage) featuredProductsFailure,
    required TResult Function() selectedCategory,
  }) {
    return featuredProductsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult? Function(String errorMessage)? featuredProductsFailure,
    TResult? Function()? selectedCategory,
  }) {
    return featuredProductsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult Function(String errorMessage)? featuredProductsFailure,
    TResult Function()? selectedCategory,
    required TResult orElse(),
  }) {
    if (featuredProductsLoading != null) {
      return featuredProductsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsSuccess value)
        featuredProductsSuccess,
    required TResult Function(FeaturedProductsFailure value)
        featuredProductsFailure,
    required TResult Function(SelectedCategory value) selectedCategory,
  }) {
    return featuredProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult? Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult? Function(SelectedCategory value)? selectedCategory,
  }) {
    return featuredProductsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult Function(SelectedCategory value)? selectedCategory,
    required TResult orElse(),
  }) {
    if (featuredProductsLoading != null) {
      return featuredProductsLoading(this);
    }
    return orElse();
  }
}

abstract class FeaturedProductsLoading implements HomeState {
  const factory FeaturedProductsLoading() = _$FeaturedProductsLoadingImpl;
}

/// @nodoc
abstract class _$$FeaturedProductsSuccessImplCopyWith<$Res> {
  factory _$$FeaturedProductsSuccessImplCopyWith(
          _$FeaturedProductsSuccessImpl value,
          $Res Function(_$FeaturedProductsSuccessImpl) then) =
      __$$FeaturedProductsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FeaturedProductsModel> featuredProducts});
}

/// @nodoc
class __$$FeaturedProductsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$FeaturedProductsSuccessImpl>
    implements _$$FeaturedProductsSuccessImplCopyWith<$Res> {
  __$$FeaturedProductsSuccessImplCopyWithImpl(
      _$FeaturedProductsSuccessImpl _value,
      $Res Function(_$FeaturedProductsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? featuredProducts = null,
  }) {
    return _then(_$FeaturedProductsSuccessImpl(
      null == featuredProducts
          ? _value._featuredProducts
          : featuredProducts // ignore: cast_nullable_to_non_nullable
              as List<FeaturedProductsModel>,
    ));
  }
}

/// @nodoc

class _$FeaturedProductsSuccessImpl implements FeaturedProductsSuccess {
  const _$FeaturedProductsSuccessImpl(
      final List<FeaturedProductsModel> featuredProducts)
      : _featuredProducts = featuredProducts;

  final List<FeaturedProductsModel> _featuredProducts;
  @override
  List<FeaturedProductsModel> get featuredProducts {
    if (_featuredProducts is EqualUnmodifiableListView)
      return _featuredProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredProducts);
  }

  @override
  String toString() {
    return 'HomeState.featuredProductsSuccess(featuredProducts: $featuredProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProductsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._featuredProducts, _featuredProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_featuredProducts));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedProductsSuccessImplCopyWith<_$FeaturedProductsSuccessImpl>
      get copyWith => __$$FeaturedProductsSuccessImplCopyWithImpl<
          _$FeaturedProductsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(List<FeaturedProductsModel> featuredProducts)
        featuredProductsSuccess,
    required TResult Function(String errorMessage) featuredProductsFailure,
    required TResult Function() selectedCategory,
  }) {
    return featuredProductsSuccess(featuredProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult? Function(String errorMessage)? featuredProductsFailure,
    TResult? Function()? selectedCategory,
  }) {
    return featuredProductsSuccess?.call(featuredProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult Function(String errorMessage)? featuredProductsFailure,
    TResult Function()? selectedCategory,
    required TResult orElse(),
  }) {
    if (featuredProductsSuccess != null) {
      return featuredProductsSuccess(featuredProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsSuccess value)
        featuredProductsSuccess,
    required TResult Function(FeaturedProductsFailure value)
        featuredProductsFailure,
    required TResult Function(SelectedCategory value) selectedCategory,
  }) {
    return featuredProductsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult? Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult? Function(SelectedCategory value)? selectedCategory,
  }) {
    return featuredProductsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult Function(SelectedCategory value)? selectedCategory,
    required TResult orElse(),
  }) {
    if (featuredProductsSuccess != null) {
      return featuredProductsSuccess(this);
    }
    return orElse();
  }
}

abstract class FeaturedProductsSuccess implements HomeState {
  const factory FeaturedProductsSuccess(
          final List<FeaturedProductsModel> featuredProducts) =
      _$FeaturedProductsSuccessImpl;

  List<FeaturedProductsModel> get featuredProducts;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedProductsSuccessImplCopyWith<_$FeaturedProductsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeaturedProductsFailureImplCopyWith<$Res> {
  factory _$$FeaturedProductsFailureImplCopyWith(
          _$FeaturedProductsFailureImpl value,
          $Res Function(_$FeaturedProductsFailureImpl) then) =
      __$$FeaturedProductsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FeaturedProductsFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$FeaturedProductsFailureImpl>
    implements _$$FeaturedProductsFailureImplCopyWith<$Res> {
  __$$FeaturedProductsFailureImplCopyWithImpl(
      _$FeaturedProductsFailureImpl _value,
      $Res Function(_$FeaturedProductsFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FeaturedProductsFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeaturedProductsFailureImpl implements FeaturedProductsFailure {
  const _$FeaturedProductsFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState.featuredProductsFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProductsFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedProductsFailureImplCopyWith<_$FeaturedProductsFailureImpl>
      get copyWith => __$$FeaturedProductsFailureImplCopyWithImpl<
          _$FeaturedProductsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(List<FeaturedProductsModel> featuredProducts)
        featuredProductsSuccess,
    required TResult Function(String errorMessage) featuredProductsFailure,
    required TResult Function() selectedCategory,
  }) {
    return featuredProductsFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult? Function(String errorMessage)? featuredProductsFailure,
    TResult? Function()? selectedCategory,
  }) {
    return featuredProductsFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult Function(String errorMessage)? featuredProductsFailure,
    TResult Function()? selectedCategory,
    required TResult orElse(),
  }) {
    if (featuredProductsFailure != null) {
      return featuredProductsFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsSuccess value)
        featuredProductsSuccess,
    required TResult Function(FeaturedProductsFailure value)
        featuredProductsFailure,
    required TResult Function(SelectedCategory value) selectedCategory,
  }) {
    return featuredProductsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult? Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult? Function(SelectedCategory value)? selectedCategory,
  }) {
    return featuredProductsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult Function(SelectedCategory value)? selectedCategory,
    required TResult orElse(),
  }) {
    if (featuredProductsFailure != null) {
      return featuredProductsFailure(this);
    }
    return orElse();
  }
}

abstract class FeaturedProductsFailure implements HomeState {
  const factory FeaturedProductsFailure(final String errorMessage) =
      _$FeaturedProductsFailureImpl;

  String get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedProductsFailureImplCopyWith<_$FeaturedProductsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedCategoryImplCopyWith<$Res> {
  factory _$$SelectedCategoryImplCopyWith(_$SelectedCategoryImpl value,
          $Res Function(_$SelectedCategoryImpl) then) =
      __$$SelectedCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectedCategoryImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SelectedCategoryImpl>
    implements _$$SelectedCategoryImplCopyWith<$Res> {
  __$$SelectedCategoryImplCopyWithImpl(_$SelectedCategoryImpl _value,
      $Res Function(_$SelectedCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectedCategoryImpl implements SelectedCategory {
  const _$SelectedCategoryImpl();

  @override
  String toString() {
    return 'HomeState.selectedCategory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectedCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(List<FeaturedProductsModel> featuredProducts)
        featuredProductsSuccess,
    required TResult Function(String errorMessage) featuredProductsFailure,
    required TResult Function() selectedCategory,
  }) {
    return selectedCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult? Function(String errorMessage)? featuredProductsFailure,
    TResult? Function()? selectedCategory,
  }) {
    return selectedCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(List<FeaturedProductsModel> featuredProducts)?
        featuredProductsSuccess,
    TResult Function(String errorMessage)? featuredProductsFailure,
    TResult Function()? selectedCategory,
    required TResult orElse(),
  }) {
    if (selectedCategory != null) {
      return selectedCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsSuccess value)
        featuredProductsSuccess,
    required TResult Function(FeaturedProductsFailure value)
        featuredProductsFailure,
    required TResult Function(SelectedCategory value) selectedCategory,
  }) {
    return selectedCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult? Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult? Function(SelectedCategory value)? selectedCategory,
  }) {
    return selectedCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsSuccess value)? featuredProductsSuccess,
    TResult Function(FeaturedProductsFailure value)? featuredProductsFailure,
    TResult Function(SelectedCategory value)? selectedCategory,
    required TResult orElse(),
  }) {
    if (selectedCategory != null) {
      return selectedCategory(this);
    }
    return orElse();
  }
}

abstract class SelectedCategory implements HomeState {
  const factory SelectedCategory() = _$SelectedCategoryImpl;
}
