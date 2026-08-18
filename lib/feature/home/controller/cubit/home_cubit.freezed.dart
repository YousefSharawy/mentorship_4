// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _resturantsInitial value)?  allResturantsInitial,TResult Function( _resturantsLoading value)?  allResturantsLoading,TResult Function( _resturantsSuccess value)?  allResturantsSuccess,TResult Function( _resturantsError value)?  allResturantsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _resturantsInitial() when allResturantsInitial != null:
return allResturantsInitial(_that);case _resturantsLoading() when allResturantsLoading != null:
return allResturantsLoading(_that);case _resturantsSuccess() when allResturantsSuccess != null:
return allResturantsSuccess(_that);case _resturantsError() when allResturantsError != null:
return allResturantsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _resturantsInitial value)  allResturantsInitial,required TResult Function( _resturantsLoading value)  allResturantsLoading,required TResult Function( _resturantsSuccess value)  allResturantsSuccess,required TResult Function( _resturantsError value)  allResturantsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _resturantsInitial():
return allResturantsInitial(_that);case _resturantsLoading():
return allResturantsLoading(_that);case _resturantsSuccess():
return allResturantsSuccess(_that);case _resturantsError():
return allResturantsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _resturantsInitial value)?  allResturantsInitial,TResult? Function( _resturantsLoading value)?  allResturantsLoading,TResult? Function( _resturantsSuccess value)?  allResturantsSuccess,TResult? Function( _resturantsError value)?  allResturantsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _resturantsInitial() when allResturantsInitial != null:
return allResturantsInitial(_that);case _resturantsLoading() when allResturantsLoading != null:
return allResturantsLoading(_that);case _resturantsSuccess() when allResturantsSuccess != null:
return allResturantsSuccess(_that);case _resturantsError() when allResturantsError != null:
return allResturantsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  allResturantsInitial,TResult Function()?  allResturantsLoading,TResult Function( List<ResturantModel> resturants)?  allResturantsSuccess,TResult Function( String? message)?  allResturantsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _resturantsInitial() when allResturantsInitial != null:
return allResturantsInitial();case _resturantsLoading() when allResturantsLoading != null:
return allResturantsLoading();case _resturantsSuccess() when allResturantsSuccess != null:
return allResturantsSuccess(_that.resturants);case _resturantsError() when allResturantsError != null:
return allResturantsError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  allResturantsInitial,required TResult Function()  allResturantsLoading,required TResult Function( List<ResturantModel> resturants)  allResturantsSuccess,required TResult Function( String? message)  allResturantsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _resturantsInitial():
return allResturantsInitial();case _resturantsLoading():
return allResturantsLoading();case _resturantsSuccess():
return allResturantsSuccess(_that.resturants);case _resturantsError():
return allResturantsError(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  allResturantsInitial,TResult? Function()?  allResturantsLoading,TResult? Function( List<ResturantModel> resturants)?  allResturantsSuccess,TResult? Function( String? message)?  allResturantsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _resturantsInitial() when allResturantsInitial != null:
return allResturantsInitial();case _resturantsLoading() when allResturantsLoading != null:
return allResturantsLoading();case _resturantsSuccess() when allResturantsSuccess != null:
return allResturantsSuccess(_that.resturants);case _resturantsError() when allResturantsError != null:
return allResturantsError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _resturantsInitial implements HomeState {
  const _resturantsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _resturantsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.allResturantsInitial()';
}


}




/// @nodoc


class _resturantsLoading implements HomeState {
  const _resturantsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _resturantsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.allResturantsLoading()';
}


}




/// @nodoc


class _resturantsSuccess implements HomeState {
  const _resturantsSuccess(final  List<ResturantModel> resturants): _resturants = resturants;
  

 final  List<ResturantModel> _resturants;
 List<ResturantModel> get resturants {
  if (_resturants is EqualUnmodifiableListView) return _resturants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_resturants);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$resturantsSuccessCopyWith<_resturantsSuccess> get copyWith => __$resturantsSuccessCopyWithImpl<_resturantsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _resturantsSuccess&&const DeepCollectionEquality().equals(other._resturants, _resturants));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_resturants));

@override
String toString() {
  return 'HomeState.allResturantsSuccess(resturants: $resturants)';
}


}

/// @nodoc
abstract mixin class _$resturantsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$resturantsSuccessCopyWith(_resturantsSuccess value, $Res Function(_resturantsSuccess) _then) = __$resturantsSuccessCopyWithImpl;
@useResult
$Res call({
 List<ResturantModel> resturants
});




}
/// @nodoc
class __$resturantsSuccessCopyWithImpl<$Res>
    implements _$resturantsSuccessCopyWith<$Res> {
  __$resturantsSuccessCopyWithImpl(this._self, this._then);

  final _resturantsSuccess _self;
  final $Res Function(_resturantsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? resturants = null,}) {
  return _then(_resturantsSuccess(
null == resturants ? _self._resturants : resturants // ignore: cast_nullable_to_non_nullable
as List<ResturantModel>,
  ));
}


}

/// @nodoc


class _resturantsError implements HomeState {
  const _resturantsError(this.message);
  

 final  String? message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$resturantsErrorCopyWith<_resturantsError> get copyWith => __$resturantsErrorCopyWithImpl<_resturantsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _resturantsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.allResturantsError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$resturantsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$resturantsErrorCopyWith(_resturantsError value, $Res Function(_resturantsError) _then) = __$resturantsErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$resturantsErrorCopyWithImpl<$Res>
    implements _$resturantsErrorCopyWith<$Res> {
  __$resturantsErrorCopyWithImpl(this._self, this._then);

  final _resturantsError _self;
  final $Res Function(_resturantsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_resturantsError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
