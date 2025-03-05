import 'package:eds_final/features/mapel/list_mapel.dart';
import 'package:eds_final/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home_controller.dart';

class HomeDashboard extends StatefulWidget {
  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
  
}

class _HomeDashboardState extends State<HomeDashboard> {
  final HomeController homeController = Get.put(HomeController());
  String apiKey1 = 'api_key1';
  String apiKey2 = 'api_key2';

  Map<String, dynamic> data1 = {};
  Map<String, dynamic> data2 = {};

  int _selectedNavbar = 0;
  void _changeSelectedNavbar(int index){
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  void initState(){
    super.initState();
    // fetchData1();
    // fetchData2();
  }

  List<String> pelajaran = [
    'Matematika',
    'Fisika',
    'Indonesia',
    'Informatika',
    'PAI',
    'IPS',
    'Sejarah',
    'Sejarah',
    'Sejarah',
    'Sejarah'
  ];

  bool showAllmapel = false;

  @override
  Widget build(BuildContext context) {
    if (showAllmapel) {
      listMapel();
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whitePutih1,
        title: Padding(
          padding: EdgeInsets.fromLTRB(1, 20, 1, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  "Hi, user!",
                  style: TextStyle(
                    color: AppColors.accentBlackApple,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Text(
                  "Selamat datang!",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Icon(
                Icons.notifications,
                color: AppColors.primaryBluemuda,
              ),
              onPressed: () {
                //tekan
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Image.asset('assets/images/ic_edo.png'),
              onPressed: () {
                // Tekan
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryBluemuda,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(21),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mau kerjain soal apa sekarang?",
                            style: TextStyle(
                                fontSize: 20, color: AppColors.whitePutih),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      flex: 1,
                      child: Image.asset('assets/images/img_dashboard.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Pilih Pelajaran",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.accentBlackApple,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showAllmapel = true;
                    });
                  },
                  child: Text(
                    pelajaran.length > 5 ? "Lihat semua" : "",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.primaryBluemuda,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: pelajaran.length > 5 ? 5 : pelajaran.length,
              itemBuilder: (context, index) {
                String pelajaranItem = pelajaran[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Card(
                      color: AppColors.whitePutih1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        child: Image.asset('assets/images/ic_mtk.png'),
                      ),
                    ),
                    title: Text(pelajaranItem),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('0/50 paket latihan soal'),
                        SizedBox(height: 4),
                        Container(
                          height: 10,
                          width: 100,
                          decoration: BoxDecoration(
                            color: AppColors.primaryBluemuda,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      // pilih pelajaran
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Terbaru",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.accentBlackApple),
                ),
              ),
            ],
          ),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 21),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      child: Center(
                          child: Image.asset('assets/images/img_jadwal.png')),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whitePutih1,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
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
            label: 'Diskusi Soal',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: AppColors.primaryBluemuda,
            ),
            label: 'Profile',
          ),
        ],currentIndex: _selectedNavbar,
      ),
    );
  }
}
