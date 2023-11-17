import 'package:bangundatar_kelasb/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});

  final SegitigaController _SegitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segitiga Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/segitiga.png", height: 150),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Segitiga",
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Sebuah segitiga adalah poligon dengan tiga ujung dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri. Segitiga dengan simpul A, B, dan C dilambangkan. Dalam geometri Euclidean, setiap tiga titik, ketika non-collinear, menentukan segitiga unik dan sekaligus, sebuah bidang unik."),
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
                  _SegitigaController.sisi = int.parse(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
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
                  _SegitigaController.alas = int.parse(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Alas",
                  hintText: "Masukkan Alas",
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
                  _SegitigaController.tinggi = int.parse(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Tinggi",
                  hintText: "Masukkan Tinggi",
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
                  _SegitigaController.hitungLuas();
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
                  _SegitigaController.hitungKeliling();
                },
                child: Text(
                  "Hitung Keliling",
                  style: TextStyle(color: Colors.blue),
                )),
          ),
          Obx(() => Text(
                _SegitigaController.hasil.value,
                style: TextStyle(color: _SegitigaController.warna.value),
              ))
        ],
      ),
    );
  }
}
