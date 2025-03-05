import '../../core/models/user_model.dart';

class UserRepository {
  UserModel? _currentUser;

  Future<UserModel?> getCurrentUser() async {
    //  logika untuk mendapatkan data user dari sumber data (misalnya API atau database)
    //  Dio atau http untuk mengambil data dari API
    // Future.delayed untuk mensimulasikan pengambilan data
    await Future.delayed(Duration(seconds: 2));

    // Return UserModel atau null jika tidak ada user yang aktif
    return _currentUser;
  }

  Future<void> loginUser(String email, String password) async {
    //  logika untuk login user
    //  AuthService atau layanan autentikasi lainnya
    // Misalnya, menggunakan Future.delayed untuk mensimulasikan proses login
    await Future.delayed(Duration(seconds: 2));

    // Setel _currentUser dengan UserModel yang valid
    _currentUser = UserModel(name: 'John Doe', age: 25);
  }

  void logoutUser() {
    // Implementasikan logika untuk logout user
    _currentUser = null;
  }
}
