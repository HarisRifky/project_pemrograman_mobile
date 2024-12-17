import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class KamarSpanyol4Controller extends GetxController {
  // Variabel untuk menyimpan data dari halaman sebelumnya
  var kasurSize = ''.obs;
  var kasurDimensions = ''.obs;  // Menyimpan dimensi kasur
  var kursiSize = ''.obs;
  var kursiDimensions = ''.obs;  // Menyimpan dimensi kursi
  var lemariSize = ''.obs;
  var lemariDimensions = ''.obs;  // Menyimpan dimensi lemari

  // Fungsi untuk menyimpan data ke Firebase
  Future<void> saveDataToFirebase() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      // Menyimpan data lengkap termasuk ukuran dan dimensi kasur, kursi, dan lemari
      await firestore.collection('orders').add({
        'kasur_size': kasurSize.value,
        'kasur_dimensions': kasurDimensions.value,
        'kursi_size': kursiSize.value,
        'kursi_dimensions': kursiDimensions.value,
        'lemari_size': lemariSize.value,
        'lemari_dimensions': lemariDimensions.value,
        'created_at': FieldValue.serverTimestamp(),
      });
      print('Data berhasil disimpan ke Firebase!');
    } catch (e) {
      print('Error menyimpan data ke Firebase: $e');
    }
  }

  // Fungsi untuk mengupdate ukuran Kasur dan Dimensi
  void setKasurSize(String size, String dimensions) {
    kasurSize.value = size;
    kasurDimensions.value = dimensions;
  }

  // Fungsi untuk mengupdate ukuran Kursi dan Dimensi
  void setKursiSize(String size, String dimensions) {
    kursiSize.value = size;
    kursiDimensions.value = dimensions;
  }

  // Fungsi untuk mengupdate ukuran Lemari dan Dimensi
  void setLemariSize(String size, String dimensions) {
    lemariSize.value = size;
    lemariDimensions.value = dimensions;
  }
}
