import 'package:gym/feature/login/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required User user,
    required String token,
  }) = _Auth;
}
