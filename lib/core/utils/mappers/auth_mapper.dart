import '../../../feature/login/data/models/auth_model.dart';
import '../../../feature/login/domain/entities/auth.dart';
import 'user_mapper.dart';

class AuthMapper {
  AuthMapper._();

  static Auth authModelToAuthEntity({required AuthModel authModel}) => Auth(
        token: authModel.token,
        user: UserMapper.userModelToUserEntity(userModel: authModel.user),
      );
}
