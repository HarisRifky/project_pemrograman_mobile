import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/kamarspanyol4/views/kamarspanyol4_view.dart';

class Kamarspanyol3View extends StatefulWidget {
  @override
  _Kamarspanyol3ViewState createState() => _Kamarspanyol3ViewState();
}

class _Kamarspanyol3ViewState extends State<Kamarspanyol3View> {
  // Variabel untuk menyimpan ukuran kursi yang dipilih oleh pengguna
  String? selectedChairSize;

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
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Get.back(),
                  ),
                  Spacer(),
                  Image.asset('assets/LOGO_YUMANSA.png', height: 40), // Ganti dengan logo yang sesuai
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
                      child: Row(
                        children: [
                          _buildCustomChip('Kasur', isSelected: false),
                          SizedBox(width: 8),
                          _buildCustomChip('Kursi', isSelected: true),
                          SizedBox(width: 8),
                          _buildCustomChip('Lemari', isSelected: false),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Ukuran Kursi:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(child: _buildSizeInput('Width')),
                          SizedBox(width: 8),
                          Text('X', style: TextStyle(fontSize: 18)),
                          SizedBox(width: 8),
                          Expanded(child: _buildSizeInput('Depth')),
                          SizedBox(width: 8),
                          Text('X', style: TextStyle(fontSize: 18)),
                          SizedBox(width: 8),
                          Expanded(child: _buildSizeInput('Height')),
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
                  onPressed: () {
                    // Menyimpan nilai ukuran kursi ke dalam variabel saat tombol ditekan
                    if (selectedChairSize != null) {
                      print('Ukuran Kursi: $selectedChairSize');  // Debugging output
                      Get.to(() => Kamarspanyol4View());
                    }
                  },
                  child: Icon(Icons.arrow_forward),
                  backgroundColor: Colors.brown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun chip custom (kasur, kursi, lemari)
  Widget _buildCustomChip(String label, {required bool isSelected}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.brown : Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Fungsi untuk membangun input ukuran
  Widget _buildSizeInput(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        onChanged: (value) {
          setState(() {
            // Menyimpan ukuran kursi berdasarkan input user
            selectedChairSize = '$label: $value cm';
          });
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'cm',
          hintStyle: TextStyle(color: Colors.grey),
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
      ),
    );
  }
}
