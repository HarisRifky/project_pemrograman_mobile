import 'package:flutter/material.dart';
import 'package:myapp/app/modules/dapur2/views/dapur2_view.dart';
import 'package:myapp/app/modules/kamar/views/kamar_view.dart';

class Dapur1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          width: 390,
          height: 850,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFFFFFF0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(width: 24, height: 24),
              ),
              // Tambahkan kode berikut di sini, tepat sebelum Positioned widget untuk 'Interior & Construction'
              Positioned(
                left: 20,
                top: 30,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Color(0xFF627254)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Positioned(
                left: 116,
                top: 40,
                child: SizedBox(
                  width: 173,
                  height: 18,
                  child: Text(
                    'Interior & Construction',
                    style: TextStyle(
                      color: Color(0xFF627254),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 41,
                top: 794,
                child: Container(
                  width: 35,
                  height: 34,
                 
                ),
              ),
              Positioned(
                left: 145,
                top: 228,
                child: Container(
                  width: 102,
                  height: 34,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 102,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color.fromRGBO(86, 43, 8, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 9,
                        child: Text(
                          'Dapur',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
  left: 31,
  top: 227,
  child: GestureDetector(
    onTap: () {
      // Pindah ke halaman KamarView
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => KamarView()),
      );
    },
    child: Container(
      width: 102,
      height: 34,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 102,
              height: 34,
              decoration: ShapeDecoration(
                color: Color(0xFFEEEEEE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 32.15,
            top: 9,
            child: SizedBox(
              width: 42.13,
              child: Text(
                'Kamar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
),

              Positioned(
                left: 258,
                top: 228,
                child: Container(
                  width: 102,
                  height: 34,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 102,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEEEEEE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8,
                        top: 9,
                        child: SizedBox(
                          width: 85,
                          child: Text(
                            'Ruang tamu',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 321,
                child: Container(
                  width: 157,
                  height: 154,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 157,
                          height: 154,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 157,
                                  height: 154,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF562B08),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator logic to go to the next page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              dapur2View()), // Replace NextPage with your target page
                                    );
                                  },
                                  child: Container(
                                    width: 157,
                                    height: 102.33,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/dapur1.jpg'),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.36,
                        top: 115,
                        child: SizedBox(
                          width: 38.56,
                          height: 10.38,
                          child: Text(
                            'Belgia',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.36,
                        top: 130.43,
                        child: SizedBox(
                          width: 75.29,
                          height: 50.36,
                          child: Text(
                            'Deskripsi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 18.43,
                top: 519,
                child: Container(
                  width: 157,
                  height: 154,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 157,
                          height: 154,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 157,
                                  height: 154,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF562B08),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator logic to go to the next page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              dapur2View()), // Replace NextPage with your target page
                                    );
                                  },
                                  child: Container(
                                    width: 157,
                                    height: 102.33,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            '../../../../../gambar/img1.png'), // Path to your image
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.36,
                        top: 115,
                        child: SizedBox(
                          width: 38.56,
                          height: 10.38,
                          child: Text(
                            'Itali',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.36,
                        top: 130.43,
                        child: SizedBox(
                          width: 75.29,
                          height: 50.36,
                          child: Text(
                            'Deskripsi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 203,
                top: 519,
                child: Container(
                  width: 157,
                  height: 154,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 157,
                          height: 154,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 157,
                                  height: 154,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF562B08),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator logic to go to the next page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              dapur2View()), // Replace NextPage with your target page
                                    );
                                  },
                                  child: Container(
                                    width: 157,
                                    height: 102.33,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            '../../../../../gambar/img2.png'), // Path to your image
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.36,
                        top: 115,
                        child: SizedBox(
                          width: 38.56,
                          height: 10.38,
                          child: Text(
                            'Japan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.36,
                        top: 130.43,
                        child: SizedBox(
                          width: 75.29,
                          height: 50.36,
                          child: Text(
                            'Deskripsi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 203,
                top: 321,
                child: Container(
                  width: 157,
                  height: 154,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 157,
                          height: 154,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 157,
                                  height: 154,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF562B08),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 157,
                                  height: 102.33,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          '../../../../../gambar/img3.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.36,
                        top: 115,
                        child: SizedBox(
                          width: 38.56,
                          height: 10.38,
                          child: Text(
                            'Spanyol',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.36,
                        top: 130.43,
                        child: SizedBox(
                          width: 75.29,
                          height: 23.36,
                          child: Text(
                            'Deskripsi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 311,
                top: 795,
                child: Container(
                  width: 35,
                  height: 34,
                  
                ),
              ),
              Positioned(
                right: 31,
                top: 24,
                child: Container(
                  width: 47,
                  height: 51,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/LOGO_YUMANSA.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 169,
                top: 799,
                child: Container(
                  width: 35,
                  height: 34,
                
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    );
  }
}
