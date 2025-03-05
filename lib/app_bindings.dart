import 'package:eds_final/features/discuss/disscusion_controller.dart';
import 'package:eds_final/features/home/home_controller.dart';
import 'package:eds_final/features/login/login_controller.dart';
import 'package:eds_final/features/register/register_page.dart';
import 'package:get/get.dart';
import 'data/repositories/auth_repository.dart';
import 'data/repositories/user_repository.dart';
import 'features/login/login_binding.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthRepository());
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => UserRepository());
    Get.lazyPut(() => LoginBinding());
    Get.lazyPut(() => RegisterPage());
    Get.lazyPut(() => DisscusionController());
    Get.lazyPut(() => HomeController());
  }
}
