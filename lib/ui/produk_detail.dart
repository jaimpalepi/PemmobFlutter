import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget{
  final String nama;
  final String nim;
  final int tahunLahir;
  const ProdukDetail(
    {Key? key,
    required this.nama,
    required this.nim,
    required this.tahunLahir})
    : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nama MHS"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Halo, Nama Saya $nama, NIM Saya $nim, Saya Lahir Tahun $tahunLahir"),
          ],
      ),
      )  
    );
  }
  }