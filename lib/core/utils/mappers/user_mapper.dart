import '../../../feature/login/data/models/user_model.dart';
import '../../../feature/login/domain/entities/user.dart';

class UserMapper {
  UserMapper._();

  static User userModelToUserEntity({required UserModel userModel}) => User(
        name: userModel.name,
        email: userModel.email,
        img: userModel.img,
        rol: userModel.rol,
        status: userModel.status,
        datetime: userModel.datetime,
        uid: userModel.uid,
      );
}
