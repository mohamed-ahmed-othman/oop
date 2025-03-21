import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String email;
  final String password;
  final String name;
  final String phone;
  final int gender;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  SignUpRequestBody({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
    required this.gender,
    required this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
