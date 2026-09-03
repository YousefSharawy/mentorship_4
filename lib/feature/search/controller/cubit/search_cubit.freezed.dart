// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState()';
}


}

/// @nodoc
class $SearchStateCopyWith<$Res>  {
$SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _SearchInitial value)?  searchInitial,TResult Function( _SearchLoading value)?  searchLoading,TResult Function( _SearchSuccess value)?  searchSuccess,TResult Function( _SearchError value)?  searchError,TResult Function( _GetAllItemsInitial value)?  getAllItemsInitial,TResult Function( _GetAllItemsLoading value)?  getAllItemsLoading,TResult Function( _GetAllItemsSucess value)?  getAllItemsSucess,TResult Function( _GetAllItemsError value)?  getAllItemsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SearchInitial() when searchInitial != null:
return searchInitial(_that);case _SearchLoading() when searchLoading != null:
return searchLoading(_that);case _SearchSuccess() when searchSuccess != null:
return searchSuccess(_that);case _SearchError() when searchError != null:
return searchError(_that);case _GetAllItemsInitial() when getAllItemsInitial != null:
return getAllItemsInitial(_that);case _GetAllItemsLoading() when getAllItemsLoading != null:
return getAllItemsLoading(_that);case _GetAllItemsSucess() when getAllItemsSucess != null:
return getAllItemsSucess(_that);case _GetAllItemsError() when getAllItemsError != null:
return getAllItemsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _SearchInitial value)  searchInitial,required TResult Function( _SearchLoading value)  searchLoading,required TResult Function( _SearchSuccess value)  searchSuccess,required TResult Function( _SearchError value)  searchError,required TResult Function( _GetAllItemsInitial value)  getAllItemsInitial,required TResult Function( _GetAllItemsLoading value)  getAllItemsLoading,required TResult Function( _GetAllItemsSucess value)  getAllItemsSucess,required TResult Function( _GetAllItemsError value)  getAllItemsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _SearchInitial():
return searchInitial(_that);case _SearchLoading():
return searchLoading(_that);case _SearchSuccess():
return searchSuccess(_that);case _SearchError():
return searchError(_that);case _GetAllItemsInitial():
return getAllItemsInitial(_that);case _GetAllItemsLoading():
return getAllItemsLoading(_that);case _GetAllItemsSucess():
return getAllItemsSucess(_that);case _GetAllItemsError():
return getAllItemsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _SearchInitial value)?  searchInitial,TResult? Function( _SearchLoading value)?  searchLoading,TResult? Function( _SearchSuccess value)?  searchSuccess,TResult? Function( _SearchError value)?  searchError,TResult? Function( _GetAllItemsInitial value)?  getAllItemsInitial,TResult? Function( _GetAllItemsLoading value)?  getAllItemsLoading,TResult? Function( _GetAllItemsSucess value)?  getAllItemsSucess,TResult? Function( _GetAllItemsError value)?  getAllItemsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SearchInitial() when searchInitial != null:
return searchInitial(_that);case _SearchLoading() when searchLoading != null:
return searchLoading(_that);case _SearchSuccess() when searchSuccess != null:
return searchSuccess(_that);case _SearchError() when searchError != null:
return searchError(_that);case _GetAllItemsInitial() when getAllItemsInitial != null:
return getAllItemsInitial(_that);case _GetAllItemsLoading() when getAllItemsLoading != null:
return getAllItemsLoading(_that);case _GetAllItemsSucess() when getAllItemsSucess != null:
return getAllItemsSucess(_that);case _GetAllItemsError() when getAllItemsError != null:
return getAllItemsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  searchInitial,TResult Function()?  searchLoading,TResult Function( List<ItemModel> items)?  searchSuccess,TResult Function( String? mesage)?  searchError,TResult Function()?  getAllItemsInitial,TResult Function()?  getAllItemsLoading,TResult Function( List<ItemModel> items)?  getAllItemsSucess,TResult Function( String? mesage)?  getAllItemsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SearchInitial() when searchInitial != null:
return searchInitial();case _SearchLoading() when searchLoading != null:
return searchLoading();case _SearchSuccess() when searchSuccess != null:
return searchSuccess(_that.items);case _SearchError() when searchError != null:
return searchError(_that.mesage);case _GetAllItemsInitial() when getAllItemsInitial != null:
return getAllItemsInitial();case _GetAllItemsLoading() when getAllItemsLoading != null:
return getAllItemsLoading();case _GetAllItemsSucess() when getAllItemsSucess != null:
return getAllItemsSucess(_that.items);case _GetAllItemsError() when getAllItemsError != null:
return getAllItemsError(_that.mesage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  searchInitial,required TResult Function()  searchLoading,required TResult Function( List<ItemModel> items)  searchSuccess,required TResult Function( String? mesage)  searchError,required TResult Function()  getAllItemsInitial,required TResult Function()  getAllItemsLoading,required TResult Function( List<ItemModel> items)  getAllItemsSucess,required TResult Function( String? mesage)  getAllItemsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _SearchInitial():
return searchInitial();case _SearchLoading():
return searchLoading();case _SearchSuccess():
return searchSuccess(_that.items);case _SearchError():
return searchError(_that.mesage);case _GetAllItemsInitial():
return getAllItemsInitial();case _GetAllItemsLoading():
return getAllItemsLoading();case _GetAllItemsSucess():
return getAllItemsSucess(_that.items);case _GetAllItemsError():
return getAllItemsError(_that.mesage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  searchInitial,TResult? Function()?  searchLoading,TResult? Function( List<ItemModel> items)?  searchSuccess,TResult? Function( String? mesage)?  searchError,TResult? Function()?  getAllItemsInitial,TResult? Function()?  getAllItemsLoading,TResult? Function( List<ItemModel> items)?  getAllItemsSucess,TResult? Function( String? mesage)?  getAllItemsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SearchInitial() when searchInitial != null:
return searchInitial();case _SearchLoading() when searchLoading != null:
return searchLoading();case _SearchSuccess() when searchSuccess != null:
return searchSuccess(_that.items);case _SearchError() when searchError != null:
return searchError(_that.mesage);case _GetAllItemsInitial() when getAllItemsInitial != null:
return getAllItemsInitial();case _GetAllItemsLoading() when getAllItemsLoading != null:
return getAllItemsLoading();case _GetAllItemsSucess() when getAllItemsSucess != null:
return getAllItemsSucess(_that.items);case _GetAllItemsError() when getAllItemsError != null:
return getAllItemsError(_that.mesage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SearchState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.initial()';
}


}




/// @nodoc


class _SearchInitial implements SearchState {
  const _SearchInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.searchInitial()';
}


}




/// @nodoc


class _SearchLoading implements SearchState {
  const _SearchLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.searchLoading()';
}


}




/// @nodoc


class _SearchSuccess implements SearchState {
  const _SearchSuccess(final  List<ItemModel> items): _items = items;
  

 final  List<ItemModel> _items;
 List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchSuccessCopyWith<_SearchSuccess> get copyWith => __$SearchSuccessCopyWithImpl<_SearchSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchSuccess&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SearchState.searchSuccess(items: $items)';
}


}

/// @nodoc
abstract mixin class _$SearchSuccessCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(_SearchSuccess value, $Res Function(_SearchSuccess) _then) = __$SearchSuccessCopyWithImpl;
@useResult
$Res call({
 List<ItemModel> items
});




}
/// @nodoc
class __$SearchSuccessCopyWithImpl<$Res>
    implements _$SearchSuccessCopyWith<$Res> {
  __$SearchSuccessCopyWithImpl(this._self, this._then);

  final _SearchSuccess _self;
  final $Res Function(_SearchSuccess) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_SearchSuccess(
null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,
  ));
}


}

/// @nodoc


class _SearchError implements SearchState {
  const _SearchError(this.mesage);
  

 final  String? mesage;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchErrorCopyWith<_SearchError> get copyWith => __$SearchErrorCopyWithImpl<_SearchError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchError&&(identical(other.mesage, mesage) || other.mesage == mesage));
}


@override
int get hashCode => Object.hash(runtimeType,mesage);

@override
String toString() {
  return 'SearchState.searchError(mesage: $mesage)';
}


}

/// @nodoc
abstract mixin class _$SearchErrorCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchErrorCopyWith(_SearchError value, $Res Function(_SearchError) _then) = __$SearchErrorCopyWithImpl;
@useResult
$Res call({
 String? mesage
});




}
/// @nodoc
class __$SearchErrorCopyWithImpl<$Res>
    implements _$SearchErrorCopyWith<$Res> {
  __$SearchErrorCopyWithImpl(this._self, this._then);

  final _SearchError _self;
  final $Res Function(_SearchError) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mesage = freezed,}) {
  return _then(_SearchError(
freezed == mesage ? _self.mesage : mesage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _GetAllItemsInitial implements SearchState {
  const _GetAllItemsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllItemsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.getAllItemsInitial()';
}


}




/// @nodoc


class _GetAllItemsLoading implements SearchState {
  const _GetAllItemsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllItemsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.getAllItemsLoading()';
}


}




/// @nodoc


class _GetAllItemsSucess implements SearchState {
  const _GetAllItemsSucess(final  List<ItemModel> items): _items = items;
  

 final  List<ItemModel> _items;
 List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllItemsSucessCopyWith<_GetAllItemsSucess> get copyWith => __$GetAllItemsSucessCopyWithImpl<_GetAllItemsSucess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllItemsSucess&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SearchState.getAllItemsSucess(items: $items)';
}


}

/// @nodoc
abstract mixin class _$GetAllItemsSucessCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$GetAllItemsSucessCopyWith(_GetAllItemsSucess value, $Res Function(_GetAllItemsSucess) _then) = __$GetAllItemsSucessCopyWithImpl;
@useResult
$Res call({
 List<ItemModel> items
});




}
/// @nodoc
class __$GetAllItemsSucessCopyWithImpl<$Res>
    implements _$GetAllItemsSucessCopyWith<$Res> {
  __$GetAllItemsSucessCopyWithImpl(this._self, this._then);

  final _GetAllItemsSucess _self;
  final $Res Function(_GetAllItemsSucess) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_GetAllItemsSucess(
null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,
  ));
}


}

/// @nodoc


class _GetAllItemsError implements SearchState {
  const _GetAllItemsError(this.mesage);
  

 final  String? mesage;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllItemsErrorCopyWith<_GetAllItemsError> get copyWith => __$GetAllItemsErrorCopyWithImpl<_GetAllItemsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllItemsError&&(identical(other.mesage, mesage) || other.mesage == mesage));
}


@override
int get hashCode => Object.hash(runtimeType,mesage);

@override
String toString() {
  return 'SearchState.getAllItemsError(mesage: $mesage)';
}


}

/// @nodoc
abstract mixin class _$GetAllItemsErrorCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$GetAllItemsErrorCopyWith(_GetAllItemsError value, $Res Function(_GetAllItemsError) _then) = __$GetAllItemsErrorCopyWithImpl;
@useResult
$Res call({
 String? mesage
});




}
/// @nodoc
class __$GetAllItemsErrorCopyWithImpl<$Res>
    implements _$GetAllItemsErrorCopyWith<$Res> {
  __$GetAllItemsErrorCopyWithImpl(this._self, this._then);

  final _GetAllItemsError _self;
  final $Res Function(_GetAllItemsError) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mesage = freezed,}) {
  return _then(_GetAllItemsError(
freezed == mesage ? _self.mesage : mesage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
