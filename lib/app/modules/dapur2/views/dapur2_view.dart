import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/dapur3/views/dapur3_view.dart';

import '../controllers/dapur2_controller.dart';

class dapur2View extends GetView<Dapur2Controller> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 650,
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
              Positioned(
                left: 311,
                top: 24,
                child: Container(
                  width: 47,
                  height: 51,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/LOGO_YUMANSA.png'),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 100,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 75,
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
                            color: Color(0xFF562B08),
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
                        left: 26,
                        top: 9,
                        child: Text(
                          'Belgia',
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
                left: 25,
                top: 537,
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
                            color: Color(0xFFD9D9D9),
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
                        left: 38,
                        top: 9,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator logic to go to the next page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Dapur3View()), // Replace NextPage with your actual page
                            );
                          },
                          child: Text(
                            'Meja',
                            style: TextStyle(
                              color: Color(0xFF562B08),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
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
                left: 141,
                top: 537,
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
                            color: Color(0xFFD9D9D9),
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
                        left: 38,
                        top: 9,
                        child: Text(
                          'Kursi',
                          style: TextStyle(
                            color: Color(0xFF562B08),
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
                left: 21,
                top: 24,
                child: GestureDetector(
                  onTap: () {
                    // Navigator logic to go to the previous page
                    Navigator.pop(
                        context); // This will navigate back to the previous page
                  },
                  child: Container(
                    width: 22,
                    height: 18,
                    child: Icon(
                      Icons.arrow_back, // Change FlutterLogo to arrow_back icon
                      size: 22,
                      color:
                          Colors.black, // You can customize the color if needed
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 336,
                child: SizedBox(
                  width: 134,
                  height: 22,
                  child: Text(
                    'Deskripsi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 363,
                child: SizedBox(
                  width: 322,
                  child: Text(
                    'Dapur nuansa Belgia menggabungkan elemen tradisional dan modern dengan bahan alami. Warna netral dan pastel menciptakan suasana hangat, sementara aksesori vintage menambah karakter. Ideal untuk berkumpul dan menikmati masakan.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 479,
                child: Container(
                  width: 338.01,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF562B08),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 498,
                child: SizedBox(
                  width: 78,
                  height: 26,
                  child: Text(
                    'Custom :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 134,
                child: Container(
                  width: 328,
                  height: 189,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/dapur1.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
