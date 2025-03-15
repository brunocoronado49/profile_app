import 'package:profile_app/features/auth/domain/domain.dart';

class UserMapper {
  static User userJsonToEntity(Map<String, dynamic> json) => User(
    id: json['id'],
    fullName: json['fullName'],
    username: json['username'],
    email: json['email'],
    phone: json['phone'],
    avatar: json['avatar'],
    token: json['token'] ?? ''
  );
}

