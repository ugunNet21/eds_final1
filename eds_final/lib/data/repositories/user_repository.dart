import '../../core/models/user_model.dart';

class UserRepository {
  Data? _currentUser;

  Future<Data?> getCurrentUser() async {
    // Implementasikan logika untuk mendapatkan data user dari sumber data (misalnya API atau database)
    // menggunakan library seperti Dio atau http untuk mengambil data dari API
    // Misalnya, menggunakan Future.delayed untuk mensimulasikan pengambilan data
    await Future.delayed(Duration(seconds: 2));

    // Return Data atau null jika tidak ada user yang aktif
    return _currentUser;
  }

  Future<void> loginUser(String email, String password) async {
    // Implementasikan logika untuk login user
    // menggunakan AuthService atau layanan autentikasi lainnya
    // Misalnya, menggunakan Future.delayed untuk mensimulasikan proses login
    await Future.delayed(Duration(seconds: 2));

    // Setel _currentUser dengan Data yang valid
    _currentUser = Data(userName: 'John Doe', userGender: "Male");
  }

  void logoutUser() {
    // Implementasikan logika untuk logout user
    _currentUser = null;
  }
}
