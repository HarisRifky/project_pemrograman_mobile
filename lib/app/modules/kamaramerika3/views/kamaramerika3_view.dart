import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/kamaramerika4/views/kamaramerika4_view.dart';

class Kamaramerika3View extends StatelessWidget {
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
                  Image.asset('assets/LOGO_YUMANSA.png', height: 40), // Replace with your logo
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
                        'Ukuran',
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
                          Expanded(child: _buildSizeInput()),
                          SizedBox(width: 8),
                          Text('X', style: TextStyle(fontSize: 18)),
                          SizedBox(width: 8),
                          Expanded(child: _buildSizeInput()),
                          SizedBox(width: 8),
                          Text('X', style: TextStyle(fontSize: 18)),
                          SizedBox(width: 8),
                          Expanded(child: _buildSizeInput()),
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
                    // Navigate to the next page
                    Get.to(() => Kamaramerika4View());
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

  Widget _buildSizeInput() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
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

