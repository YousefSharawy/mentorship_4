// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FoodState()';
}


}

/// @nodoc
class $FoodStateCopyWith<$Res>  {
$FoodStateCopyWith(FoodState _, $Res Function(FoodState) __);
}


/// Adds pattern-matching-related methods to [FoodState].
extension FoodStatePatterns on FoodState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _MenuInitial value)?  menuInitial,TResult Function( _MenuLoading value)?  menuLoading,TResult Function( _MenuSuccess value)?  menuSuccess,TResult Function( _MenuError value)?  menuError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _MenuInitial() when menuInitial != null:
return menuInitial(_that);case _MenuLoading() when menuLoading != null:
return menuLoading(_that);case _MenuSuccess() when menuSuccess != null:
return menuSuccess(_that);case _MenuError() when menuError != null:
return menuError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _MenuInitial value)  menuInitial,required TResult Function( _MenuLoading value)  menuLoading,required TResult Function( _MenuSuccess value)  menuSuccess,required TResult Function( _MenuError value)  menuError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _MenuInitial():
return menuInitial(_that);case _MenuLoading():
return menuLoading(_that);case _MenuSuccess():
return menuSuccess(_that);case _MenuError():
return menuError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _MenuInitial value)?  menuInitial,TResult? Function( _MenuLoading value)?  menuLoading,TResult? Function( _MenuSuccess value)?  menuSuccess,TResult? Function( _MenuError value)?  menuError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _MenuInitial() when menuInitial != null:
return menuInitial(_that);case _MenuLoading() when menuLoading != null:
return menuLoading(_that);case _MenuSuccess() when menuSuccess != null:
return menuSuccess(_that);case _MenuError() when menuError != null:
return menuError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  menuInitial,TResult Function()?  menuLoading,TResult Function( List<ItemModel> menuItems)?  menuSuccess,TResult Function( String? message)?  menuError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _MenuInitial() when menuInitial != null:
return menuInitial();case _MenuLoading() when menuLoading != null:
return menuLoading();case _MenuSuccess() when menuSuccess != null:
return menuSuccess(_that.menuItems);case _MenuError() when menuError != null:
return menuError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  menuInitial,required TResult Function()  menuLoading,required TResult Function( List<ItemModel> menuItems)  menuSuccess,required TResult Function( String? message)  menuError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _MenuInitial():
return menuInitial();case _MenuLoading():
return menuLoading();case _MenuSuccess():
return menuSuccess(_that.menuItems);case _MenuError():
return menuError(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  menuInitial,TResult? Function()?  menuLoading,TResult? Function( List<ItemModel> menuItems)?  menuSuccess,TResult? Function( String? message)?  menuError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _MenuInitial() when menuInitial != null:
return menuInitial();case _MenuLoading() when menuLoading != null:
return menuLoading();case _MenuSuccess() when menuSuccess != null:
return menuSuccess(_that.menuItems);case _MenuError() when menuError != null:
return menuError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements FoodState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FoodState.initial()';
}


}




/// @nodoc


class _MenuInitial implements FoodState {
  const _MenuInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FoodState.menuInitial()';
}


}




/// @nodoc


class _MenuLoading implements FoodState {
  const _MenuLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FoodState.menuLoading()';
}


}




/// @nodoc


class _MenuSuccess implements FoodState {
  const _MenuSuccess(final  List<ItemModel> menuItems): _menuItems = menuItems;
  

 final  List<ItemModel> _menuItems;
 List<ItemModel> get menuItems {
  if (_menuItems is EqualUnmodifiableListView) return _menuItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_menuItems);
}


/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuSuccessCopyWith<_MenuSuccess> get copyWith => __$MenuSuccessCopyWithImpl<_MenuSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuSuccess&&const DeepCollectionEquality().equals(other._menuItems, _menuItems));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_menuItems));

@override
String toString() {
  return 'FoodState.menuSuccess(menuItems: $menuItems)';
}


}

/// @nodoc
abstract mixin class _$MenuSuccessCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory _$MenuSuccessCopyWith(_MenuSuccess value, $Res Function(_MenuSuccess) _then) = __$MenuSuccessCopyWithImpl;
@useResult
$Res call({
 List<ItemModel> menuItems
});




}
/// @nodoc
class __$MenuSuccessCopyWithImpl<$Res>
    implements _$MenuSuccessCopyWith<$Res> {
  __$MenuSuccessCopyWithImpl(this._self, this._then);

  final _MenuSuccess _self;
  final $Res Function(_MenuSuccess) _then;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? menuItems = null,}) {
  return _then(_MenuSuccess(
null == menuItems ? _self._menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,
  ));
}


}

/// @nodoc


class _MenuError implements FoodState {
  const _MenuError(this.message);
  

 final  String? message;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuErrorCopyWith<_MenuError> get copyWith => __$MenuErrorCopyWithImpl<_MenuError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FoodState.menuError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$MenuErrorCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory _$MenuErrorCopyWith(_MenuError value, $Res Function(_MenuError) _then) = __$MenuErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$MenuErrorCopyWithImpl<$Res>
    implements _$MenuErrorCopyWith<$Res> {
  __$MenuErrorCopyWithImpl(this._self, this._then);

  final _MenuError _self;
  final $Res Function(_MenuError) _then;

/// Create a copy of FoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_MenuError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
