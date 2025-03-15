import 'package:profile_app/features/auth/domain/domain.dart';

class AuthDatasourceImpl extends AuthDatasource{
  @override
  Future<User> checkAuthStatus(String token) {
    // TODO: implement checkAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<User> register(String fullName, String email, String phone, String username, String avatar) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
