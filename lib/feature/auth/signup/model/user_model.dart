

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';
@freezed
abstract class UserModel with _$UserModel{
factory UserModel ({
  required String userEmail,
  required String password,
  required String usercode,
}) =_UserModel;
factory UserModel.fromJson(Map<String,dynamic>json)=>_$UserModelFromJson(json);
}