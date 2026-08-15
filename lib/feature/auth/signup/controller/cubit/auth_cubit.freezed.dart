// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _SignUpInitial value)?  signupInitial,TResult Function( _SignUpLoading value)?  signupLoading,TResult Function( _SignUpSuccess value)?  signupSuccess,TResult Function( _SignUpError value)?  signupError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SignUpInitial() when signupInitial != null:
return signupInitial(_that);case _SignUpLoading() when signupLoading != null:
return signupLoading(_that);case _SignUpSuccess() when signupSuccess != null:
return signupSuccess(_that);case _SignUpError() when signupError != null:
return signupError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _SignUpInitial value)  signupInitial,required TResult Function( _SignUpLoading value)  signupLoading,required TResult Function( _SignUpSuccess value)  signupSuccess,required TResult Function( _SignUpError value)  signupError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _SignUpInitial():
return signupInitial(_that);case _SignUpLoading():
return signupLoading(_that);case _SignUpSuccess():
return signupSuccess(_that);case _SignUpError():
return signupError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _SignUpInitial value)?  signupInitial,TResult? Function( _SignUpLoading value)?  signupLoading,TResult? Function( _SignUpSuccess value)?  signupSuccess,TResult? Function( _SignUpError value)?  signupError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SignUpInitial() when signupInitial != null:
return signupInitial(_that);case _SignUpLoading() when signupLoading != null:
return signupLoading(_that);case _SignUpSuccess() when signupSuccess != null:
return signupSuccess(_that);case _SignUpError() when signupError != null:
return signupError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signupInitial,TResult Function()?  signupLoading,TResult Function( UserModel user)?  signupSuccess,TResult Function( String? message)?  signupError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SignUpInitial() when signupInitial != null:
return signupInitial();case _SignUpLoading() when signupLoading != null:
return signupLoading();case _SignUpSuccess() when signupSuccess != null:
return signupSuccess(_that.user);case _SignUpError() when signupError != null:
return signupError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signupInitial,required TResult Function()  signupLoading,required TResult Function( UserModel user)  signupSuccess,required TResult Function( String? message)  signupError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _SignUpInitial():
return signupInitial();case _SignUpLoading():
return signupLoading();case _SignUpSuccess():
return signupSuccess(_that.user);case _SignUpError():
return signupError(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signupInitial,TResult? Function()?  signupLoading,TResult? Function( UserModel user)?  signupSuccess,TResult? Function( String? message)?  signupError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SignUpInitial() when signupInitial != null:
return signupInitial();case _SignUpLoading() when signupLoading != null:
return signupLoading();case _SignUpSuccess() when signupSuccess != null:
return signupSuccess(_that.user);case _SignUpError() when signupError != null:
return signupError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class _SignUpInitial implements AuthState {
  const _SignUpInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.signupInitial()';
}


}




/// @nodoc


class _SignUpLoading implements AuthState {
  const _SignUpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.signupLoading()';
}


}




/// @nodoc


class _SignUpSuccess implements AuthState {
  const _SignUpSuccess(this.user);
  

 final  UserModel user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpSuccessCopyWith<_SignUpSuccess> get copyWith => __$SignUpSuccessCopyWithImpl<_SignUpSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpSuccess&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.signupSuccess(user: $user)';
}


}

/// @nodoc
abstract mixin class _$SignUpSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$SignUpSuccessCopyWith(_SignUpSuccess value, $Res Function(_SignUpSuccess) _then) = __$SignUpSuccessCopyWithImpl;
@useResult
$Res call({
 UserModel user
});


$UserModelCopyWith<$Res> get user;

}
/// @nodoc
class __$SignUpSuccessCopyWithImpl<$Res>
    implements _$SignUpSuccessCopyWith<$Res> {
  __$SignUpSuccessCopyWithImpl(this._self, this._then);

  final _SignUpSuccess _self;
  final $Res Function(_SignUpSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_SignUpSuccess(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _SignUpError implements AuthState {
  const _SignUpError(this.message);
  

 final  String? message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpErrorCopyWith<_SignUpError> get copyWith => __$SignUpErrorCopyWithImpl<_SignUpError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.signupError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SignUpErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$SignUpErrorCopyWith(_SignUpError value, $Res Function(_SignUpError) _then) = __$SignUpErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$SignUpErrorCopyWithImpl<$Res>
    implements _$SignUpErrorCopyWith<$Res> {
  __$SignUpErrorCopyWithImpl(this._self, this._then);

  final _SignUpError _self;
  final $Res Function(_SignUpError) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_SignUpError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
