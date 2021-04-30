import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkımızda"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3311409 kodlu Mobil Programlama dersi kapsamında 173311052 numaralı Mustafa Fatih GÜNDÜZ tarafından 30 Nisan 2021 günü yapılmıştır.",
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16,
              fontFamily: "OpenSans"),
        ),
      ),
    );
  }
}
