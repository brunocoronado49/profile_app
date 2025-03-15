import 'package:profile_app/features/auth/domain/domain.dart';
import 'package:profile_app/features/auth/infrastructure/datasources/auth_datasource_impl.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl([AuthDatasource? datasource]) 
    : datasource = datasource ?? AuthDatasourceImpl();

  @override
  Future<User> checkAuthStatus(String token) {
    return datasource.checkAuthStatus(token);
  }

  @override
  Future<User> login(String email, String password) {
    return datasource.login(email, password);
  }

  @override
  Future<User> register(String fullName, String email, String phone, String username, String avatar) {
    return datasource.register(fullName, email, phone, username, avatar);
  }
}
