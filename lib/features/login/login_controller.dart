import 'package:get/get.dart';

import '../../../../data/repositories/auth_repository.dart';


class LoginController extends GetxController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();

  Future<void> login(String email, String password) async {
    await _authRepository.login(email, password);
    // Navigasi ke halaman berikutnya setelah login berhasil
    Get.toNamed('/home');
  }
}
