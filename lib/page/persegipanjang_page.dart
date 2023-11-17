import 'package:bangundatar_kelasb/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});

  final PersegiPanjangController _PersegiPanjangController =
      Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Persegi Panjang Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/persegipanjang.jpg", height: 150),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi Panjang",
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Persegi panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku "),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                onChanged: (value) {
                  _PersegiPanjangController.panjang = int.parse(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Panjang",
                  hintText: "Masukkan Panjang",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                onChanged: (value) {
                  _PersegiPanjangController.lebar = int.parse(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Lebar",
                  hintText: "Masukkan Lebar",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _PersegiPanjangController.hitungLuas();
                },
                child: Text(
                  "Hitung Luas",
                  style: TextStyle(color: Colors.pink),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _PersegiPanjangController.hitungKeliling();
                },
                child: Text(
                  "Hitung Keliling",
                  style: TextStyle(color: Colors.blue),
                )),
          ),
          Obx(() => Text(
                _PersegiPanjangController.hasil.value,
                style: TextStyle(color: _PersegiPanjangController.warna.value),
              ))
        ],
      ),
    );
  }
}
