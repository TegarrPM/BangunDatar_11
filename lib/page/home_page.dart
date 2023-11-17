import 'package:bangundatar_kelasb/page/persegi_page.dart';
import 'package:bangundatar_kelasb/page/persegipanjang_page.dart';
import 'package:bangundatar_kelasb/page/segitiga_page.dart';
import 'package:bangundatar_kelasb/page/belahketupat_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFE91E63),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PersegiPage()));
                },
                child: CustomMenu(
                    imageAsset: "assets/persegi.jpg", title: "Persegi"),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PersegiPanjangPage()));
                },
                child: CustomMenu(
                    imageAsset: "assets/persegipanjang.jpg",
                    title: "Persegi Panjang"),
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SegitigaPage()));
                    },
                    child: CustomMenu(
                        imageAsset: "assets/segitiga.png", title: "Segitiga"),
                  )),
              Expanded(
                  child: CustomMenu(
                      imageAsset: "assets/trapesium.png", title: "Trapesium")),
            ],
          ),
          Expanded(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BelahKetupatPage()));
                },
                child: CustomMenu(
                    imageAsset: "assets/belahketupat.png.", title: "Belah Ketupat"),
              )),
          Expanded(
              child: CustomMenu(
                  imageAsset: "assets/lingkaran.png.", title: "Lingkaran")),
        ],

      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        color: Colors.green.shade300,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 150),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}
