import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/kamaramerika2/views/kamaramerika2_view.dart'; // Tambahkan ini untuk menggunakan GetX

class Kamaramerika1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.brown),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
        title: Text(
          'Amerika Klasik',
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              'assets/LOGO_YUMANSA.png', // Pastikan logo ini ada di folder assets
              height: 40,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/kamar2.jpg', // Pastikan gambar ini ada di folder assets
                height: 180.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Deskripsi ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Kamar bergaya Amerika klasik menggabungkan elemen elegan dan fungsional dengan furnitur kayu, aksen vintage, dan suasana hangat yang nyaman dan timeless.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Divider(
              color: Colors.brown,
              thickness: 1,
            ),
            SizedBox(height: 8),
            Text(
              'Custom:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCustomButton('Kasur', false, () {
                  Get.to(() => Kamaramerika2View()); // Navigasi ke KamarSpanyol2View
                }),
                buildCustomButton('Kursi', false, () {
                  // Logika navigasi untuk Kursi bisa ditambahkan di sini
                }),
                buildCustomButton('Lemari', false, () {
                  // Logika navigasi untuk Lemari bisa ditambahkan di sini
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat button custom
  Widget buildCustomButton(String label, bool isSelected, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.brown : Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed, // Menggunakan callback untuk navigasi
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}