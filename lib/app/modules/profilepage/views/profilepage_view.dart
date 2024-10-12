import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/home/views/home_view.dart';
import 'package:myapp/app/modules/home2/views/home2_view.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 390,
                height: 850,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFF562B08),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 147,
                      top: 124,
                      child: Container(
                        width: 96,
                        height: 94,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/96x94"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 246,
                      child: Container(
                        width: 390,
                        height: 617,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFFFF0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(61),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 139,
                      top: 729,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => HomeView());
                        },
                        child: Container(
                          width: 111,
                          height: 58,
                          decoration: ShapeDecoration(
                            color: Color(0xFF941B00),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Logout',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFFFFF0),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 306,
                      child: Container(
                        width: 336,
                        height: 68,
                        decoration: ShapeDecoration(
                          color: Color(0x21D9D9D9),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Color(0xFF941B00)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 389,
                      child: Container(
                        width: 336,
                        height: 68,
                        decoration: ShapeDecoration(
                          color: Color(0x21D9D9D9),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Color(0xFF941B00)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 472,
                      child: Container(
                        width: 336,
                        height: 68,
                        decoration: ShapeDecoration(
                          color: Color(0x21D9D9D9),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Color(0xFF941B00)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 555,
                      child: Container(
                        width: 336,
                        height: 68,
                        decoration: ShapeDecoration(
                          color: Color(0x21D9D9D9),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Color(0xFF941B00)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 49,
                      top: 332,
                      child: Text(
                        'NAMA',
                        style: TextStyle(
                          color: Color(0xFF941B00),
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 49,
                      top: 415,
                      child: Text(
                        'GMAIL',
                        style: TextStyle(
                          color: Color(0xFF941B00),
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 54,
                      top: 582,
                      child: Text(
                        'ALAMAT',
                        style: TextStyle(
                          color: Color(0xFF941B00),
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 55,
                      top: 499,
                      child: Text(
                        'NO HP',
                        style: TextStyle(
                          color: Color(0xFF941B00),
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Tombol panah kembali
          Positioned(
            left: 20,
            top: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
             onPressed: () {
            Get.to(() =>
                const HomePage()); // Navigasi ke HomePage saat tombol back ditekan
          },
            ),
          ),
        ],
      ),
    );
  }
}
