// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  userEmail: json['userEmail'] as String,
  password: json['password'] as String,
  usercode: json['usercode'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'userEmail': instance.userEmail,
      'password': instance.password,
      'usercode': instance.usercode,
    };
