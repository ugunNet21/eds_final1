import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String selectedGender = 'Male'; // Default value 'Male'
  TextEditingController classController = TextEditingController();
  TextEditingController schoolController = TextEditingController();

  bool isDataSaved = false;

  @override
  void initState() {
    super.initState();
    loadData(); // Load the saved data when the widget initializes
  }

  void loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      fullNameController.text = prefs.getString('fullName') ?? '';
      emailController.text = prefs.getString('email') ?? '';
      selectedGender = prefs.getString('gender') ?? 'Male';
      classController.text = prefs.getString('class') ?? '';
      schoolController.text = prefs.getString('school') ?? '';
    });
  }

  void saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('fullName', fullNameController.text);
    await prefs.setString('email', emailController.text);
    await prefs.setString('gender', selectedGender);
    await prefs.setString('class', classController.text);
    await prefs.setString('school', schoolController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/6915/6915987.png',
                    fit: BoxFit.cover,
                    width: 2 * 45,
                    height: 2 * 45,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Text('Gender:'),
                  SizedBox(width: 8.0),
                  DropdownButton<String>(
                    value: selectedGender,
                    onChanged: (newValue) {
                      setState(() {
                        selectedGender = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        value: 'Male',
                        child: Text('Male'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Female',
                        child: Text('Female'),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: classController,
                decoration: InputDecoration(
                  labelText: 'Class',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: schoolController,
                decoration: InputDecoration(
                  labelText: 'School',
                ),
              ),
              SizedBox(height: 32.0),
              Visibility(
                visible: fullNameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty &&
                    selectedGender.isNotEmpty &&
                    classController.text.isNotEmpty &&
                    schoolController.text.isNotEmpty,
                child: ElevatedButton(
                  onPressed: isDataSaved ? _handleUpdate : _handleSave,
                  child: Text(isDataSaved ? 'Update' : 'Save'),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _handleLogout,
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleSave() {
    saveData(); // Save the entered data
    setState(() {
      isDataSaved = true;
    });
  }

  void _handleUpdate() {
    // Perform data update logic here

    // Clear the form fields after updating
    fullNameController.clear();
    emailController.clear();
    selectedGender = 'Male'; // Restore the default value 'Male'
    classController.clear();
    schoolController.clear();

    setState(() {
      isDataSaved = false;
    });
  }

  void _handleLogout() {
    // Perform logout logic here

    saveData(); // Save the entered data before logout
    Get.offAll('/login');
  }
}
