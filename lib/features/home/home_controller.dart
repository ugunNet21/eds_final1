import 'package:eds_final/features/discuss/disscusion_page.dart';
import 'package:get/get.dart';
import '../profile/profile_page.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        break;
      case 1:
        Get.to(() => DisscusionPage());
        break;
      case 2:
        Get.to(() => ProfileTab());
        break;
    }
  }
}
