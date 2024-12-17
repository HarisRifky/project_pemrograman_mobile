import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/kamarspanyol3/views/kamarspanyol3_view.dart';

class KamarSpanyol2View extends StatefulWidget {
  @override
  _KamarSpanyol2ViewState createState() => _KamarSpanyol2ViewState();
}

class _KamarSpanyol2ViewState extends State<KamarSpanyol2View> {
  String? selectedSize;  // Menyimpan ukuran kasur yang dipilih
  String? selectedSizeName; // Menyimpan nama ukuran kasur yang dipilih
  String? selectedSizeDimensions; // Menyimpan dimensi ukuran kasur yang dipilih

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
                          'Spanyol',
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
                          image: AssetImage('assets/kamar1.jpg'),
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
                        'Kamar Spanyol menghadirkan suasana hangat dengan warna merah bata dan krem. Furnitur kayu berukir yang kokoh dan tempat tidur besar dengan sprei cerah memberikan nuansa klasik.',
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
                          // Simpan data ukuran kasur yang dipilih ke dalam variabel
                          var selectedBedSize = {
                            'size': selectedSizeName,
                            'dimensions': selectedSizeDimensions,
                          };

                          // Lanjutkan ke halaman berikutnya dan kirim data
                          Get.to(() => Kamarspanyol3View(), arguments: selectedBedSize);
                        }
                      : null,  // Jika belum memilih ukuran kasur, tidak bisa lanjut
                  child: Icon(Icons.arrow_forward),
                  backgroundColor: selectedSize != null ? Colors.brown : Colors.grey, // Warna berubah berdasarkan pilihan
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String label, Color color, Color textColor) {
    return Chip(
      label: Text(label, style: TextStyle(color: textColor)),
      backgroundColor: color,
    );
  }

  Widget _buildSizeChip(String size, String dimensions) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size; // Menyimpan ukuran kasur yang dipilih
          selectedSizeName = size; // Menyimpan nama ukuran kasur
          selectedSizeDimensions = dimensions; // Menyimpan dimensi ukuran kasur
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
