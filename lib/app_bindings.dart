import 'package:eds_final/features/register/register_page.dart';
import 'package:get/get.dart';
import 'data/repositories/auth_repository.dart';
import 'data/repositories/user_repository.dart';
import 'features/login/login_binding.dart';


class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthRepository());
    Get.lazyPut(() => UserRepository());
    Get.lazyPut(() => LoginBinding());
    Get.lazyPut(() => RegisterPage());
    // Tambahkan dependensi lain yang diperlukan di sini
  }
}
