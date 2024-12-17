import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/spanyol1sukses/views/spanyol1sukses_view.dart';

class Kamarjapan2View extends StatefulWidget {
  @override
  _Kamarjapan2ViewState createState() => _Kamarjapan2ViewState();
}

class _Kamarjapan2ViewState extends State<Kamarjapan2View> {
  String? selectedSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => Get.back(),
                      ),
                      SizedBox(width: 16),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Japan',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  // Menambahkan logo di sebelah kanan
                  Image.asset(
                    'assets/LOGO_YUMANSA.png', // ganti dengan path logo kamu
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/kamar4.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      margin: EdgeInsets.all(16),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Deskripsi',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Desain kamar bernuansa Jepang menampilkan kesederhanaan dengan elemen kayu, tatami, pintu geser shoji, dan dekorasi minimalis, menciptakan suasana tenang dan harmonis.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Custom :',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          _buildChip('Kasur', Colors.brown, Colors.white),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          _buildSizeChip('King', '180 x 200 cm'),
                          _buildSizeChip('Double XL', '140 x 200 cm'),
                          _buildSizeChip('Queen', '160 x 200 cm'),
                          _buildSizeChip('Single Bed', '90 x 200 cm'),
                          _buildSizeChip('Double', '120 x 200 cm'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: selectedSize != null
                      ? () {
                          // Navigasi ke halaman berikutnya (misalnya halaman transaksi)
                           Get.to(() => Spanyol1SuksesView()); // Ganti dengan route yang sesuai
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Text('ORDER NOW', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String label, Color color, Color textColor) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = label;
        });
      },
      child: Chip(
        label: Text(label, style: TextStyle(color: textColor)),
        backgroundColor: selectedSize == label ? Colors.brown : color,
      ),
    );
  }

  Widget _buildSizeChip(String size, String dimensions) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: selectedSize == size ? Colors.brown : Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(size, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(dimensions, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
