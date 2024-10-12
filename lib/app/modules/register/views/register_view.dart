import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/suksesdaftar/views/success_registration_view.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFBF5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/LOGO_YUMANSA.png', height: 100),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 30,
                  height: 2,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: 30),
              _buildTextField('Nama'),
              _buildTextField('Email'),
              _buildTextField('Password', isPassword: true),
              _buildTextField('Alamat'),
              _buildTextField('No. HP'),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text(
                  'Daftar',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: () {
                  Get.to(() => SuccessRegistrationView());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF562B08),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.brown, fontSize: 12),
                    children: [
                      TextSpan(text: 'Dengan mendaftar, anda menyetujui\n'),
                      TextSpan(
                        text: 'aturan penggunaan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' dan '),
                      TextSpan(
                        text: 'kebijakan privasi',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
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
        style: TextStyle(color: Colors.brown),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.red,
            fontSize: 14,
            fontWeight: FontWeight.bold, // Membuat teks label menjadi bold
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
