import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/kamaramerika3/views/kamaramerika3_view.dart';

class Kamaramerika2View extends StatefulWidget {
  @override
  _Kamaramerika2ViewState createState() => _Kamaramerika2ViewState();
}

class _Kamaramerika2ViewState extends State<Kamaramerika2View> {
  String? selectedSize; // Menyimpan ukuran kasur yang dipilih

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
                          'Amerika Klasik',
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
                          image: AssetImage('assets/kamar2.jpg'),
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
                        'Kamar bergaya Amerika klasik menggabungkan elemen elegan dan fungsional dengan furnitur kayu, aksen vintage, dan suasana hangat yang nyaman dan timeless.',
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
                          _buildChip('Kursi', Colors.grey[300]!, Colors.black),
                          _buildChip('Lemari', Colors.grey[300]!, Colors.black),
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
                child: FloatingActionButton(
                  onPressed: selectedSize != null
                      ? () {
                          // Lakukan navigasi ke halaman berikutnya
                          Get.to(() => Kamaramerika3View ());
                        }
                      : null, // Nonaktifkan tombol jika ukuran kasur belum dipilih
                  child: Icon(Icons.arrow_forward),
                  backgroundColor: selectedSize != null ? Colors.brown : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Membuat chip untuk pilihan kasur
  Widget _buildChip(String label, Color color, Color textColor) {
    return Chip(
      label: Text(label, style: TextStyle(color: textColor)),
      backgroundColor: color,
    );
  }

  // Membuat chip untuk ukuran kasur
  Widget _buildSizeChip(String size, String dimensions) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size; // Set ukuran kasur yang dipilih
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
