import 'package:eds_final/features/home/home_controller.dart';
import 'package:eds_final/features/home/home_nav.dart';
import 'package:eds_final/features/mapel/list_mapel.dart';
import 'package:eds_final/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final HomeController _homeController = Get.put(HomeController());

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
                // Tindakan saat tombol notification di tekan
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Image.asset('assets/images/ic_edo.png'),
              onPressed: () {
                // Tindakan saat tombol account di tekan
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
                      // Tindakan saat pelajaran dipilih
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
      bottomNavigationBar: HomeNavigation(),
    );
  }
}
