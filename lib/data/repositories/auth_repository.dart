import '../../core/services/auth_service.dart';

class AuthRepository {
  final AuthService _authService = AuthService();

  Future<void> login(String email, String password) async {
    await _authService.login(email, password);
  }

  Future<void> register(String email, String password) async {
    await _authService.register(email, password);
  }

  void logout() {
    _authService.logout();
  }
}
