// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderResponseModel {

 List<OrderItemModel> get fullorder; double get grandTotal;
/// Create a copy of OrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderResponseModelCopyWith<OrderResponseModel> get copyWith => _$OrderResponseModelCopyWithImpl<OrderResponseModel>(this as OrderResponseModel, _$identity);

  /// Serializes this OrderResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderResponseModel&&const DeepCollectionEquality().equals(other.fullorder, fullorder)&&(identical(other.grandTotal, grandTotal) || other.grandTotal == grandTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fullorder),grandTotal);

@override
String toString() {
  return 'OrderResponseModel(fullorder: $fullorder, grandTotal: $grandTotal)';
}


}

/// @nodoc
abstract mixin class $OrderResponseModelCopyWith<$Res>  {
  factory $OrderResponseModelCopyWith(OrderResponseModel value, $Res Function(OrderResponseModel) _then) = _$OrderResponseModelCopyWithImpl;
@useResult
$Res call({
 List<OrderItemModel> fullorder, double grandTotal
});




}
/// @nodoc
class _$OrderResponseModelCopyWithImpl<$Res>
    implements $OrderResponseModelCopyWith<$Res> {
  _$OrderResponseModelCopyWithImpl(this._self, this._then);

  final OrderResponseModel _self;
  final $Res Function(OrderResponseModel) _then;

/// Create a copy of OrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullorder = null,Object? grandTotal = null,}) {
  return _then(_self.copyWith(
fullorder: null == fullorder ? _self.fullorder : fullorder // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,grandTotal: null == grandTotal ? _self.grandTotal : grandTotal // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderResponseModel].
extension OrderResponseModelPatterns on OrderResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrderItemModel> fullorder,  double grandTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderResponseModel() when $default != null:
return $default(_that.fullorder,_that.grandTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrderItemModel> fullorder,  double grandTotal)  $default,) {final _that = this;
switch (_that) {
case _OrderResponseModel():
return $default(_that.fullorder,_that.grandTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrderItemModel> fullorder,  double grandTotal)?  $default,) {final _that = this;
switch (_that) {
case _OrderResponseModel() when $default != null:
return $default(_that.fullorder,_that.grandTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderResponseModel implements OrderResponseModel {
   _OrderResponseModel({required final  List<OrderItemModel> fullorder, required this.grandTotal}): _fullorder = fullorder;
  factory _OrderResponseModel.fromJson(Map<String, dynamic> json) => _$OrderResponseModelFromJson(json);

 final  List<OrderItemModel> _fullorder;
@override List<OrderItemModel> get fullorder {
  if (_fullorder is EqualUnmodifiableListView) return _fullorder;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fullorder);
}

@override final  double grandTotal;

/// Create a copy of OrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderResponseModelCopyWith<_OrderResponseModel> get copyWith => __$OrderResponseModelCopyWithImpl<_OrderResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderResponseModel&&const DeepCollectionEquality().equals(other._fullorder, _fullorder)&&(identical(other.grandTotal, grandTotal) || other.grandTotal == grandTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fullorder),grandTotal);

@override
String toString() {
  return 'OrderResponseModel(fullorder: $fullorder, grandTotal: $grandTotal)';
}


}

/// @nodoc
abstract mixin class _$OrderResponseModelCopyWith<$Res> implements $OrderResponseModelCopyWith<$Res> {
  factory _$OrderResponseModelCopyWith(_OrderResponseModel value, $Res Function(_OrderResponseModel) _then) = __$OrderResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<OrderItemModel> fullorder, double grandTotal
});




}
/// @nodoc
class __$OrderResponseModelCopyWithImpl<$Res>
    implements _$OrderResponseModelCopyWith<$Res> {
  __$OrderResponseModelCopyWithImpl(this._self, this._then);

  final _OrderResponseModel _self;
  final $Res Function(_OrderResponseModel) _then;

/// Create a copy of OrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullorder = null,Object? grandTotal = null,}) {
  return _then(_OrderResponseModel(
fullorder: null == fullorder ? _self._fullorder : fullorder // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,grandTotal: null == grandTotal ? _self.grandTotal : grandTotal // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
