import 'package:flutter/material.dart';
import 'package:flutterpertama/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget{
  const ProdukForm({Key? key}) : super(key: key);
  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm>{
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Silahkan Isi Data'),
      ),
      body: Container(
          margin:EdgeInsets.all(10),
          child:Column(
            children: [
              _textboxnama(),
              _textboxnim(),
              _textboxtahun(),
              _tombolSimpan()
            ],
        )
      ),
    );
  }
  _textboxnama(){
  return TextField(
    decoration:const InputDecoration(labelText: "Nama"),
    controller: _namaController,
  );
}

_textboxnim(){
  return TextField(
    decoration: const InputDecoration(labelText: "NIM"),
    controller: _nimController,
  );
}

_textboxtahun(){
  return TextField(
    decoration: const InputDecoration(labelText: "Tahun Lahir"),
    controller: _tahunController,
  );
}

_tombolSimpan(){
  return ElevatedButton(
    onPressed: (){
      String nama = _namaController.text;
      String nim = _nimController.text;
      int tahun = int.parse(_tahunController.text);
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProdukDetail(
        nama: nama,
        nim: nim,
        tahunLahir: tahun,
      )));

    },
    child: const Text('Simpan')
  );
}
}

