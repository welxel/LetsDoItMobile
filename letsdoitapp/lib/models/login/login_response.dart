import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse{
  String name;
  String? surname;
  String token;
  int id;

  LoginResponse({
    required this.name,
    required this.id,
    this.surname,
    required this.token
});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}