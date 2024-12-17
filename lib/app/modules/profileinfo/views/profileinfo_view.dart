import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/auth_controller.dart';

class ProfileInfoView extends StatefulWidget {
  @override
  _ProfileInfoViewState createState() => _ProfileInfoViewState();
}

class _ProfileInfoViewState extends State<ProfileInfoView> {
  final AuthController authController = Get.find<AuthController>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize controllers with current user data
    final userData = authController.userData;
    nameController.text = userData['nama'] ?? '';
    emailController.text = userData['email'] ?? '';
    phoneController.text = userData['no_hp'] ?? '';
    addressController.text = userData['alamat'] ?? '';
  }

  Future<void> _updateProfile() async {
    final success = await authController.updateUserProfile(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      address: addressController.text,
    );

    if (success) {
      Get.snackbar(
        "Success",
        "Profile updated successfully",
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.back(result: true);
    } else {
      Get.snackbar(
        "Error",
        "Failed to update profile",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color(0xFFFFFFF0), // Sesuaikan warna agar sesuai dengan background
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF562B08)),
          onPressed: () {
            Navigator.pop(context); // Fungsi kembali
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 390,
            height: 700, // Menentukan tinggi agar Stack memiliki batasan
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
                  left: 30,
                  top: 82,
                  child: Container(
                    width: 96,
                    height: 94,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/96x94"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 141,
                  top: 31,
                  child: Text(
                    'PROFILE INFO',
                    style: TextStyle(
                      color: Color(0xFF562B08),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 144,
                  top: 82,
                  child: Text(
                    'Update your Picture',
                    style: TextStyle(
                      color: Color(0xFF562B08),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 106,
                  child: Text(
                    'Upload a photo under 2 MB',
                    style: TextStyle(
                      color: Color(0xFF562B08),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Positioned(
                  left: 145,
                  top: 139,
                  child: Container(
                    width: 117,
                    height: 30,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Upload',
                        style: TextStyle(
                          color: Color(0xFF562B08),
                          fontSize: 12,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 251,
                  child: Container(
                    width: 303,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            labelText: 'Nama',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: phoneController,
                          decoration: InputDecoration(
                            labelText: 'No. HP',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: addressController,
                          decoration: InputDecoration(
                            labelText: 'Alamat',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: _updateProfile,
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Colors
                                    .white), // Mengubah warna tulisan menjadi putih
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF562B08),
                            minimumSize: Size(double.infinity, 50),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }
}
