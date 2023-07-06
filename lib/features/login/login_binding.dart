import 'package:get/get.dart';
import '../../../../data/repositories/user_repository.dart';
import 'login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository());
    // Get.lazyPut(() => LoginController());
  }
}
