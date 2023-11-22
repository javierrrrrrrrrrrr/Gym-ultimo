import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  factory AuthModel({
    required UserModel user,
    required String token,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
