import 'package:eds_final/features/home/home_controller.dart';
import 'package:eds_final/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNavigation extends StatelessWidget {
  final HomeController _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        backgroundColor: AppColors.whitePutih1,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _homeController.selectedIndex.value,
        onTap: _homeController.changePage,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_home.png',
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryBluemuda,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/ic_quiz.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
            label: 'Diskusi',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: AppColors.primaryBluemuda,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}