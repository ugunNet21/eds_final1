
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/home_tabs.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  String? selectedGender;
  String? selectedClass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yuk Isi Data Diri'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Mohon masukkan email';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Nama Lengkap',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Mohon masukkan nama lengkap';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedGender,
              onChanged: (value) {
                selectedGender = value;
              },
              items: ['Laki-laki', 'Perempuan'].map((gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Jenis Kelamin',
              ),
              validator: (value) {
                if (value == null) {
                  return 'Mohon pilih jenis kelamin';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedClass,
              onChanged: (value) {
                selectedClass = value;
              },
              items: ['Kelas 10', 'Kelas 11', 'Kelas 12'].map((kelas) {
                return DropdownMenuItem<String>(
                  value: kelas,
                  child: Text(kelas),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Kelas',
              ),
              validator: (value) {
                if (value == null) {
                  return 'Mohon pilih kelas';
                }
                return null;
              },
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Get.to(HomeTab());
                // if (Form.of(context).validate()) {
                //   // Proses simpan data dan pindah ke halaman berikutnya
                //   Get.toNamed(AppRoutes.dashboard);
                // }
              },
              child: Text('Daftar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
