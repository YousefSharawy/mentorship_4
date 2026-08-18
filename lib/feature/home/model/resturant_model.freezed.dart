// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resturant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResturantModel {

 int get restaurantID; String get restaurantName; String get address; String get type; bool get parkingLot;
/// Create a copy of ResturantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResturantModelCopyWith<ResturantModel> get copyWith => _$ResturantModelCopyWithImpl<ResturantModel>(this as ResturantModel, _$identity);

  /// Serializes this ResturantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResturantModel&&(identical(other.restaurantID, restaurantID) || other.restaurantID == restaurantID)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.address, address) || other.address == address)&&(identical(other.type, type) || other.type == type)&&(identical(other.parkingLot, parkingLot) || other.parkingLot == parkingLot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,restaurantID,restaurantName,address,type,parkingLot);

@override
String toString() {
  return 'ResturantModel(restaurantID: $restaurantID, restaurantName: $restaurantName, address: $address, type: $type, parkingLot: $parkingLot)';
}


}

/// @nodoc
abstract mixin class $ResturantModelCopyWith<$Res>  {
  factory $ResturantModelCopyWith(ResturantModel value, $Res Function(ResturantModel) _then) = _$ResturantModelCopyWithImpl;
@useResult
$Res call({
 int restaurantID, String restaurantName, String address, String type, bool parkingLot
});




}
/// @nodoc
class _$ResturantModelCopyWithImpl<$Res>
    implements $ResturantModelCopyWith<$Res> {
  _$ResturantModelCopyWithImpl(this._self, this._then);

  final ResturantModel _self;
  final $Res Function(ResturantModel) _then;

/// Create a copy of ResturantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? restaurantID = null,Object? restaurantName = null,Object? address = null,Object? type = null,Object? parkingLot = null,}) {
  return _then(_self.copyWith(
restaurantID: null == restaurantID ? _self.restaurantID : restaurantID // ignore: cast_nullable_to_non_nullable
as int,restaurantName: null == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,parkingLot: null == parkingLot ? _self.parkingLot : parkingLot // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ResturantModel].
extension ResturantModelPatterns on ResturantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResturantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResturantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResturantModel value)  $default,){
final _that = this;
switch (_that) {
case _ResturantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResturantModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResturantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int restaurantID,  String restaurantName,  String address,  String type,  bool parkingLot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResturantModel() when $default != null:
return $default(_that.restaurantID,_that.restaurantName,_that.address,_that.type,_that.parkingLot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int restaurantID,  String restaurantName,  String address,  String type,  bool parkingLot)  $default,) {final _that = this;
switch (_that) {
case _ResturantModel():
return $default(_that.restaurantID,_that.restaurantName,_that.address,_that.type,_that.parkingLot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int restaurantID,  String restaurantName,  String address,  String type,  bool parkingLot)?  $default,) {final _that = this;
switch (_that) {
case _ResturantModel() when $default != null:
return $default(_that.restaurantID,_that.restaurantName,_that.address,_that.type,_that.parkingLot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResturantModel implements ResturantModel {
   _ResturantModel({required this.restaurantID, required this.restaurantName, required this.address, required this.type, required this.parkingLot});
  factory _ResturantModel.fromJson(Map<String, dynamic> json) => _$ResturantModelFromJson(json);

@override final  int restaurantID;
@override final  String restaurantName;
@override final  String address;
@override final  String type;
@override final  bool parkingLot;

/// Create a copy of ResturantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResturantModelCopyWith<_ResturantModel> get copyWith => __$ResturantModelCopyWithImpl<_ResturantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResturantModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResturantModel&&(identical(other.restaurantID, restaurantID) || other.restaurantID == restaurantID)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.address, address) || other.address == address)&&(identical(other.type, type) || other.type == type)&&(identical(other.parkingLot, parkingLot) || other.parkingLot == parkingLot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,restaurantID,restaurantName,address,type,parkingLot);

@override
String toString() {
  return 'ResturantModel(restaurantID: $restaurantID, restaurantName: $restaurantName, address: $address, type: $type, parkingLot: $parkingLot)';
}


}

/// @nodoc
abstract mixin class _$ResturantModelCopyWith<$Res> implements $ResturantModelCopyWith<$Res> {
  factory _$ResturantModelCopyWith(_ResturantModel value, $Res Function(_ResturantModel) _then) = __$ResturantModelCopyWithImpl;
@override @useResult
$Res call({
 int restaurantID, String restaurantName, String address, String type, bool parkingLot
});




}
/// @nodoc
class __$ResturantModelCopyWithImpl<$Res>
    implements _$ResturantModelCopyWith<$Res> {
  __$ResturantModelCopyWithImpl(this._self, this._then);

  final _ResturantModel _self;
  final $Res Function(_ResturantModel) _then;

/// Create a copy of ResturantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? restaurantID = null,Object? restaurantName = null,Object? address = null,Object? type = null,Object? parkingLot = null,}) {
  return _then(_ResturantModel(
restaurantID: null == restaurantID ? _self.restaurantID : restaurantID // ignore: cast_nullable_to_non_nullable
as int,restaurantName: null == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,parkingLot: null == parkingLot ? _self.parkingLot : parkingLot // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
