import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang =0;
  int lebar =0;
  final hasil= "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas() {
    int hitung = panjang * lebar;
    warna.value = Colors.pink;
    hasil.value = "Hasil Perhitungan luas dari $panjang * $lebar = $hitung";
  }
  void hitungKeliling(){
    int hitung =  4 + panjang+lebar;
    warna.value = Colors.blue;
    hasil.value = "Hasil Perhitungan keliling dari  4 + $lebar+$panjang = $hitung";
  }
}
