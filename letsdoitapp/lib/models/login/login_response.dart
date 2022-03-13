
import 'package:LetsDoIt/models/login/user_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse{
  UserResponse? data;
  int status;
  String message;

  LoginResponse({
    this.data,
    required this.status,
    required this.message
});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}