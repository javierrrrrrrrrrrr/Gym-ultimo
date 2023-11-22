import 'package:dartz/dartz.dart';
import 'package:gym/core/utils/request/auth/login_request.dart';
import 'package:gym/core/utils/request/auth/register_request.dart';
import 'package:gym/feature/login/domain/entities/auth.dart';

import '../../../../core/errors/failure.dart';

typedef AuthFunction = Future<Either<Failure, Auth>>;

abstract class AuthRepository {
  AuthFunction login(LoginRequest request);
  AuthFunction register(RegisterRequest request);
}
