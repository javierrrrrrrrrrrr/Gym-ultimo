import 'package:dartz/dartz.dart';
import 'package:gym/core/errors/exeption.dart';
import 'package:gym/core/errors/failure.dart';
import 'package:gym/core/utils/mappers/auth_mapper.dart';
import 'package:gym/core/utils/request/auth/login_request.dart';

import 'package:gym/core/utils/request/auth/register_request.dart';

import '../../domain/repository/auth_repository.dart';
import '../data_sources/auth_remote_data_source.dart';

class AuthRepositoryImplementation extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImplementation({required this.authRemoteDataSource});

  @override
  AuthFunction login(LoginRequest request) async {
    try {
      final authData = await authRemoteDataSource.login(request: request);

      return Right(AuthMapper.authModelToAuthEntity(authModel: authData));
    } on ServerException {
      return const Left(ServerFailure("Server Failure"));
    }
  }

  @override
  AuthFunction register(RegisterRequest request) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
