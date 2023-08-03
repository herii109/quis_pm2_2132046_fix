import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.red, // Ubah warna AppBar menjadi merah
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/UNIVERSITASTEKNOKRAT.png',
                  height: 100,
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      'Universitas Teknokrat Indonesia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'ASEAN Best Private',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.red), // Ubah warna label menjadi merah
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.red), // Ubah warna label menjadi merah
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _loginPressed();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Ubah warna tombol menjadi hijau
              ),
              child: Text('Login'),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                // Tambahkan fungsi untuk tombol "Lupa Password" di sini
              },
              child: Text(
                'Lupa Password',
                style: TextStyle(
                  color: Colors.red, // Ubah warna teks menjadi merah (tidak ada warna default, ini hanya contoh)
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Developed by Heri (21312046)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void _loginPressed() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Lakukan proses validasi login sesuai kebutuhan aplikasi Anda
    // Contoh sederhana: Cek apakah username dan password sesuai atau tidak
    if (username == 'teknorat' && password == 'password') {
      _showAlertDialog(context, 'Login Berhasil');
    } else {
      _showAlertDialog(context, 'Login Gagal');
    }
  }

  void _showAlertDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Info'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
