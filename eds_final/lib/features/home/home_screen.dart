import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeDashboard extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) => BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            controller.changePage(index);
          },
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
                    color: Colors.blue,
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
              label: 'Diskusi Soal',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          if (controller.selectedIndex.value == 0) {
            return Center(
              child: Text('Home Screen'),
            );
          } else if (controller.selectedIndex.value == 1) {
            return Center(
              child: Text('Diskusi Soal Screen'),
            );
          } else if (controller.selectedIndex.value == 2) {
            return Center(
              child: Text('Profile Screen'),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
