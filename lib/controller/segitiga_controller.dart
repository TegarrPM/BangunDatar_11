import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas =0;
  int tinggi =0;
  int sisi =0;
  final hasil= "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas() {
    double hitung = 0.5 * alas * tinggi;
    warna.value = Colors.pink;
    hasil.value = "Hasil Perhitungan luas dari 1/2 * $alas * $tinggi = $hitung";
  }
  void hitungKeliling(){
    int hitung = sisi + sisi + sisi;
    warna.value = Colors.blue;
    hasil.value = "Hasil Perhitungan luas keliling $sisi + $sisi + $sisi adalah $hitung";
  }
}
