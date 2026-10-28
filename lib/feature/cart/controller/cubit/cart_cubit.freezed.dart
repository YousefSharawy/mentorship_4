// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartState {

 int get count; AddToCartStatus get status; List<OrderItemModel> get orderItems; List<CartItemModel> get cartItems; String? get errorMessage; bool get isEditCartMode;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&(identical(other.count, count) || other.count == count)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.orderItems, orderItems)&&const DeepCollectionEquality().equals(other.cartItems, cartItems)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isEditCartMode, isEditCartMode) || other.isEditCartMode == isEditCartMode));
}


@override
int get hashCode => Object.hash(runtimeType,count,status,const DeepCollectionEquality().hash(orderItems),const DeepCollectionEquality().hash(cartItems),errorMessage,isEditCartMode);

@override
String toString() {
  return 'CartState(count: $count, status: $status, orderItems: $orderItems, cartItems: $cartItems, errorMessage: $errorMessage, isEditCartMode: $isEditCartMode)';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 int count, AddToCartStatus status, List<OrderItemModel> orderItems, List<CartItemModel> cartItems, String? errorMessage, bool isEditCartMode
});




}
/// @nodoc
class _$CartStateCopyWithImpl<$Res>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? status = null,Object? orderItems = null,Object? cartItems = null,Object? errorMessage = freezed,Object? isEditCartMode = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AddToCartStatus,orderItems: null == orderItems ? _self.orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,cartItems: null == cartItems ? _self.cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isEditCartMode: null == isEditCartMode ? _self.isEditCartMode : isEditCartMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartState value)  $default,){
final _that = this;
switch (_that) {
case _CartState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartState value)?  $default,){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  AddToCartStatus status,  List<OrderItemModel> orderItems,  List<CartItemModel> cartItems,  String? errorMessage,  bool isEditCartMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.count,_that.status,_that.orderItems,_that.cartItems,_that.errorMessage,_that.isEditCartMode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  AddToCartStatus status,  List<OrderItemModel> orderItems,  List<CartItemModel> cartItems,  String? errorMessage,  bool isEditCartMode)  $default,) {final _that = this;
switch (_that) {
case _CartState():
return $default(_that.count,_that.status,_that.orderItems,_that.cartItems,_that.errorMessage,_that.isEditCartMode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  AddToCartStatus status,  List<OrderItemModel> orderItems,  List<CartItemModel> cartItems,  String? errorMessage,  bool isEditCartMode)?  $default,) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.count,_that.status,_that.orderItems,_that.cartItems,_that.errorMessage,_that.isEditCartMode);case _:
  return null;

}
}

}

/// @nodoc


class _CartState extends CartState {
  const _CartState({this.count = 1, this.status = AddToCartStatus.initial, final  List<OrderItemModel> orderItems = const [], final  List<CartItemModel> cartItems = const [], this.errorMessage, this.isEditCartMode = false}): _orderItems = orderItems,_cartItems = cartItems,super._();
  

@override@JsonKey() final  int count;
@override@JsonKey() final  AddToCartStatus status;
 final  List<OrderItemModel> _orderItems;
@override@JsonKey() List<OrderItemModel> get orderItems {
  if (_orderItems is EqualUnmodifiableListView) return _orderItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderItems);
}

 final  List<CartItemModel> _cartItems;
@override@JsonKey() List<CartItemModel> get cartItems {
  if (_cartItems is EqualUnmodifiableListView) return _cartItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cartItems);
}

@override final  String? errorMessage;
@override@JsonKey() final  bool isEditCartMode;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartStateCopyWith<_CartState> get copyWith => __$CartStateCopyWithImpl<_CartState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartState&&(identical(other.count, count) || other.count == count)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._orderItems, _orderItems)&&const DeepCollectionEquality().equals(other._cartItems, _cartItems)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isEditCartMode, isEditCartMode) || other.isEditCartMode == isEditCartMode));
}


@override
int get hashCode => Object.hash(runtimeType,count,status,const DeepCollectionEquality().hash(_orderItems),const DeepCollectionEquality().hash(_cartItems),errorMessage,isEditCartMode);

@override
String toString() {
  return 'CartState(count: $count, status: $status, orderItems: $orderItems, cartItems: $cartItems, errorMessage: $errorMessage, isEditCartMode: $isEditCartMode)';
}


}

/// @nodoc
abstract mixin class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(_CartState value, $Res Function(_CartState) _then) = __$CartStateCopyWithImpl;
@override @useResult
$Res call({
 int count, AddToCartStatus status, List<OrderItemModel> orderItems, List<CartItemModel> cartItems, String? errorMessage, bool isEditCartMode
});




}
/// @nodoc
class __$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(this._self, this._then);

  final _CartState _self;
  final $Res Function(_CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? status = null,Object? orderItems = null,Object? cartItems = null,Object? errorMessage = freezed,Object? isEditCartMode = null,}) {
  return _then(_CartState(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AddToCartStatus,orderItems: null == orderItems ? _self._orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,cartItems: null == cartItems ? _self._cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isEditCartMode: null == isEditCartMode ? _self.isEditCartMode : isEditCartMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
