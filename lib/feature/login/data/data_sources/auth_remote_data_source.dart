import 'dart:convert';

import 'package:gym/core/utils/request/auth/login_request.dart';

import '../../../../core/errors/exeption.dart';
import '../../../../core/utils/constants/url.dart';
import '../../../../core/utils/request/auth/register_request.dart';
import '../models/auth_model.dart';
import 'package:dio/dio.dart';

abstract class AuthRemoteDataSource {
  Future<AuthModel> login({required LoginRequest request});
  Future<AuthModel> register({required RegisterRequest request});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<AuthModel> login({required LoginRequest request}) async {
    final url = AppUrl.login;
    final response = await dio.post(url, data: request.toJson());

    if (response.statusCode == 200) {
      Map<String, dynamic> responseMap = jsonDecode(response.data);
      return AuthModel.fromJson(responseMap);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<AuthModel> register({required RegisterRequest request}) {
    throw UnimplementedError();
  }
}
