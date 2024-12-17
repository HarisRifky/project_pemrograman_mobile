import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/dapur1bgian2/views/dapur1bgian2_view.dart';

class dapur1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF562B08)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Belgia',
          style: TextStyle(
            color: Color(0xFF562B08),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              'assets/LOGO_YUMANSA.png', // Make sure this logo is in the assets folder
              height: 40,
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFFFFFF0),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/dapur1.jpg', // Make sure this image is in the assets folder
                height: 180.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Deskripsi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices augue. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Divider(
              color: Color(0xFF562B08),
              thickness: 1,
            ),
            SizedBox(height: 8),
            Text(
              'Custom:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCustomButton('Kursi', false, () {
                  Get.to(() => dapur1bgian2View());
                }),
                buildCustomButton('Meja', false, () {
                  // Add navigation logic for 'Meja' here
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to create custom buttons
  Widget buildCustomButton(
      String label, bool isSelected, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Color(0xFF562B08) : Color(0xFFDDDDDD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
