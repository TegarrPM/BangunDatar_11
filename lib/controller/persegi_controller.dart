import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil= "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas() {
    int hitung = sisi * sisi;
    warna.value = Colors.pink;
    hasil.value = "Hasil Perhitungan luas dari $sisi x $sisi = $hitung";
  }
  void hitungKeliling(){
    int hitung = 4 * sisi;
    warna.value = Colors.blue;
    hasil.value = "Hasil Perhitungan luas keliling 4 * $sisi  adalah $hitung";
  }
  }
