import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    required String email,
    required String img,
    required String rol,
    required bool status,
    required String datetime,
    required String uid,
  }) = _User;
}
