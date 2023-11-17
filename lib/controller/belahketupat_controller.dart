import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BelahKetupatController extends GetxController{
  int d1 =0;
  int d2 =0;
  int sisi =0;
  final hasil= "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas() {
    double hitung = 0.5 * d1 * d2;
    warna.value = Colors.pink;
    hasil.value = "Hasil Perhitungan luas dari  $d1 * $d2 * 1/2 = $hitung";
  }
  void hitungKeliling(){
    int hitung = 4 * sisi;
    warna.value = Colors.blue;
    hasil.value = "Hasil Perhitungan luas keliling $sisi + $sisi + $sisi  $sisi adalah $hitung";
  }
}
