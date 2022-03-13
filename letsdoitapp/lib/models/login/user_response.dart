import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';
@JsonSerializable()
class UserResponse{
  String? name;
  String? surname;
  String? token;
  int? id;

  UserResponse({
     this.name,
    this.surname,
     this.token,
     this.id
  });
  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}