import 'package:bangundatar_kelasb/controller/belahketupat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BelahKetupatPage extends StatelessWidget {
  BelahKetupatPage({super.key});

  final BelahKetupatController _BelahKetupatController =
  Get.put(BelahKetupatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belah Ketupat Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/belahketupat.png", height: 150),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Belah Ketupat",
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Belah ketupat adalah bangun datar dua dimensi yang dibentuk oleh empat buah segitiga siku siku masing-masing sama besar dengan sudut di hadapannya. Belah ketupat memiliki dua buah diagonal yang saling tegak lurus. Kedua diagonal tersebut ditunjukkan oleh garis AC dan BD"),
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
                  _BelahKetupatController.d1 = int.parse(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "d1",
                  hintText: "Masukkan d1",
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
                  _BelahKetupatController.d2 = int.parse(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "d2",
                  hintText: "Masukkan d2",
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
                  _BelahKetupatController.sisi = int.parse(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "sisi",
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _BelahKetupatController.hitungLuas();
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
                  _BelahKetupatController.hitungKeliling();
                },
                child: Text(
                  "Hitung Keliling",
                  style: TextStyle(color: Colors.blue),
                )),
          ),
          Obx(() => Text(
            _BelahKetupatController.hasil.value,
            style: TextStyle(color: _BelahKetupatController.warna.value),
          ))
        ],
      ),
    );
  }
}
