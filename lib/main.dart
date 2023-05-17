import 'package:flutter/material.dart';

import 'Kelimeler.dart';

void main() {
  runApp(const SozlukOyunuApp());
}

class SozlukOyunuApp extends StatelessWidget {
  const SozlukOyunuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sözlük Oyunu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SozlukOyunu(),
    );
  }
}

class SozlukOyunu extends StatefulWidget {
  const SozlukOyunu({super.key});


  @override
  State<SozlukOyunu> createState() => SozlukOyunuHomePage();
}

class SozlukOyunuHomePage extends State<SozlukOyunu> {
  List<Kelime> kelimeler = [
    Kelime(turkce: 'Araba', ingilizce: 'Car'),
    Kelime(turkce: 'Kitap', ingilizce: 'Book'),
    // Diğer kelimeleri buraya ekleyin
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sözlük Oyunu"),
        actions: [
          IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Arama işlemleri burada gerçekleştirilebilir.
            },
           ),
        ],
      ),
      body: ListView.builder(
          itemCount: kelimeler.length,//Kelime sayısı
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text(showIngilizce ? kelimeler.ingilizce : kelimeler.turkce),
                onTap: (){
                  //Kartın arkasını gösterme işlemini burada yapacağız
                },
              ),
            );
          }),
    );
  }
}
