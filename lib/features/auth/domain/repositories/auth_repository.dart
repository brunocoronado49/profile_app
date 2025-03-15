import 'package:profile_app/features/auth/domain/domain.dart';

abstract class AuthRepository {
  Future<User> checkAuthStatus(String token);
  Future<User> login(String email, String password);
  Future<User> register(
    String fullName,
    String email,
    String phone,
    String username,
    String avatar
  );
}
