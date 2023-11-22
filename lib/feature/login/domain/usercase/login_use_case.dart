import 'package:dartz/dartz.dart';
import 'package:gym/core/usercase/use_case.dart';
import 'package:gym/feature/login/domain/repository/auth_repository.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/request/auth/login_request.dart';
import '../entities/auth.dart';

typedef AuthFunction = Future<Either<Failure, Auth>>;

class LoginUseCase extends UseCase<Auth, LoginRequest> {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);

  @override
  AuthFunction call({required LoginRequest params}) =>
      authRepository.login(params);
}
