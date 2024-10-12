import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/home2/views/home2_view.dart';
import 'package:myapp/app/modules/register/views/register_view.dart';
import 'package:myapp/app/modules/lupapassword/views/lupapassword_view.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFBF5), // Warna latar belakang yang sesuai
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back()
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset('assets/LOGO_YUMANSA.png', height: 80),
              SizedBox(height: 20),
              _buildTextField('Email'),
              _buildTextField('Password', isPassword: true),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() =>
                        LupaPasswordView()); // Navigasi ke halaman LupaPasswordView
                  },
                  child: Text(
                    'Lupa Password',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text(
                  'Masuk',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Get.to(() => HomePage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromRGBO(86, 43, 8, 1), // Warna cokelat
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Belum punya akun? ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Daftar Sekarang',
                      style: TextStyle(
                        color: Colors.brown,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() =>
                              RegisterView()); // Navigasi ke halaman RegisterView
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.brown),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.brown, width: 2),
          ),
        ),
      ),
    );
  }
}
