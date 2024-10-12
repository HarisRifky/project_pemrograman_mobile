import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/kamarspanyol1/views/kamarspanyol1_view.dart';
import 'package:myapp/app/modules/home2/views/home2_view.dart'; 
import 'package:myapp/app/modules/historypage/views/historypage_view.dart'; 
import 'package:myapp/app/modules/profilepage/views/profilepage_view.dart'; 
import 'package:myapp/app/modules/dapur1/views/dapur1_view.dart'; 

class KamarView extends StatefulWidget {
  @override
  _KamarViewState createState() => _KamarViewState();
}

class _KamarViewState extends State<KamarView> {
  int _selectedIndex = 0; 

  final List<Widget> _pages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F3E9),
        elevation: 0,
        title: const Text(
          'Interior & Construction',
          style: TextStyle(
            color: Color.fromRGBO(86, 43, 8, 1),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              'assets/LOGO_YUMANSA.png', 
              width: 40,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTabButton('Kamar', _selectedIndex == 0, () {
                  // Navigasi ke halaman Kamar
                  setState(() {
                    _selectedIndex = 0;
                  });
                }),
                buildTabButton('Dapur', _selectedIndex == 1, () {
                  // Navigasi ke halaman Dapur
                  Get.to(() => Dapur1View()); // Ganti dengan halaman Dapur
                }),
                buildTabButton('Ruang Tamu', _selectedIndex == 2, () {
                  // Kosongkan untuk ruang tamu
                  // Kamu bisa menambahkan navigasi ke Ruang Tamu di sini nanti
                }),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return buildCardItem(context);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, 
        backgroundColor: Color.fromRGBO(86, 43, 8, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => _pages[index]),
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Histori',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget buildTabButton(String label, bool isSelected, VoidCallback onTap) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Color.fromRGBO(86, 43, 8, 1) : Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: onTap,
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  // Fungsi untuk membuat item card di grid
  Widget buildCardItem(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Kamarspanyol1View()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: Image.asset(
                'assets/kamar1.jpg', // Pastikan file ini ada di folder assets
                height: 100.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Spanyol',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Fasilitas penuh gaya, cocok untuk ruang tidur modern.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
