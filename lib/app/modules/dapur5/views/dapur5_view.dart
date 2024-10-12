import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/home2/views/home2_view.dart';

import '../controllers/dapur5_controller.dart';

class Dapur5View extends GetView<Dapur5Controller> {
  const Dapur5View({super.key});
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
                left: 55,
                top: 211,
                child: Container(
                  width: 279,
                  height: 336,
                  decoration: ShapeDecoration(
                    color: Color(0xFF562B08),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
                left: 136,
                top: 259,
                child: Container(
                  width: 118,
                  height: 120,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFFFF0),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 153,
                top: 278,
                child: Container(
                  width: 83,
                  height: 83,
                  child: Icon(
                    Icons.check, // Menggunakan ikon centang
                    color: Color.fromARGB(255, 155, 52, 12), // Atur warna sesuai keinginan
                    size: 83, // Ukuran ikon
                  ),
                ),
              ),
              Positioned(
                left: 141,
                top: 393,
                child: Text(
                  'Success !',
                  style: TextStyle(
                    color: Color(0xFFFFFFF0),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 104,
                top: 436,
                child: SizedBox(
                  width: 181,
                  child: Text(
                    'Orderanmu sudah diterima dan akan kami hubungi kembali melalui email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFFFF0),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 604,
                child: Container(
                  width: 149,
                  height: 67,
                  decoration: ShapeDecoration(
                    color: Color(0xFF562B08),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
                left: 167,
                top: 629,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => HomePage()); // Navigasi ke Home2View dengan GetX
                  },
                  child: Text(
                    'Kembali',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFFFF0),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
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
