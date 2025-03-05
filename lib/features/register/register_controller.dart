import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../data/repositories/auth_repository.dart';

class RegisterController extends GetxController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();

  Future<void> login(String email, String password) async {
    await _authRepository.login(email, password);
    // Navigasi ke halaman berikutnya setelah login berhasil
    Get.toNamed('/home');
  }
}
