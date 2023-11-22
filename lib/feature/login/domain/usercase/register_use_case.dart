import 'package:dartz/dartz.dart';
import 'package:gym/core/usercase/use_case.dart';
import 'package:gym/feature/login/domain/repository/auth_repository.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/request/auth/register_request.dart';
import '../entities/auth.dart';

typedef AuthFunction = Future<Either<Failure, Auth>>;

class RegisterUseCase extends UseCase<Auth, RegisterRequest> {
  final AuthRepository authRepository;

  RegisterUseCase(this.authRepository);

  @override
  AuthFunction call({required RegisterRequest params}) =>
      authRepository.register(params);
}
