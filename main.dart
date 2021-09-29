// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart'; //mengimport apa yang ada didalam class yang telah dibuat

class LayoutRow extends StatelessWidget {
  //untuk membuat nama class,dalam pembuatan nama class,
  //dalam pembuatan nama class harus menggunakna huruf kapital
  const LayoutRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // kelas yang membuat widget yang sifatnya statis
    return MaterialApp(
        //untuk memuat fungsi dari widget seperti title dan lainnya.
        home: Scaffold(
            //Widget utama untuk membuat sebuah halaman pafa flutter
            appBar: AppBar(
              //digunakan pada sebuah aplikasi sebagai menu petunjuk
              //untuk memmudahkan pengguna aplikasi
              flexibleSpace: SafeArea(
                  //untuk memasang silver menghindari intrupsi sistem operasi
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                //berguna untuk memuat baris judul yang akan dimuat.
                child: Column(
                  //membuat colom.
                  children: [
                    //isi dari judul
                    Row(
                      //berguna untuk memasukan suatu baris
                      children: const [
                        IconButton(
                          //untuk menampilkan menu
                          icon: Icon(Icons.menu), //menu pilihan
                          tooltip:
                              'Navigation menu', //lampiran dari menu yang akan dilampirkan
                          onPressed: null, // null disables the button
                        ),
                        Spacer(), //membrikan spasi pada suatu penulisan
                        Text(
                          //berguna menampung suatu penulisan
                          'Kantin Politeknik Kampar', //kalimat yang ditampilkan
                          textAlign: TextAlign
                              .center, //peletakan posisi dari penulisan
                        ),
                        Spacer() //memberikan spasi pada suatu penulisan
                      ],
                    )
                  ],
                ),
              )),
            ),
            // ignore: avoid_unnecessary_containers
            body: Container(
              child: Column(
                children: [
                  Row(
                    //memasukan suatu baris
                    children: const [
                      Text(
                        //menampung text yang dimasukan
                        'kolom Pertama baris Pertama', // print
                        textAlign:
                            TextAlign.left, //peletakan posisi dari penulisan
                      ),
                      Spacer(), //memberikan spasi pada penulisan
                      Text(
                        //menampun text yang dimasukan
                        'kolom kedua baris Pertama', //print
                        textAlign: TextAlign
                            .center, //peletakan posisi dari text yang ditampilkan
                      ),
                      Spacer(), //spasi pada penulisan
                      Text(
                        //menampung text yang dimasukan
                        'kolom Ketiga baris Pertama', //print
                        textAlign: TextAlign.right, //peletakan posisi tulisan
                      ),
                    ],
                  ),
                  Row(
                    //menampilkan suatu baris
                    children: const [
                      Text(
                        //menampung text yang akan dimasukan
                        'kolom Pertama baris kedua', //print
                        textAlign: TextAlign.left, //peletakan posisi tulisan
                      ),
                      Spacer(), //spasi pada penulisan
                      Text(
                        //menampung text yang dimasukan
                        'kolom kedua baris kedua', //print
                        textAlign: TextAlign.center, //peletakan posisi text
                      ),
                      Spacer(), //spasi pada penulisan
                      Text(
                        //menampung text yang akan dimasukan
                        'kolom ketiga baris kedua', //print
                        textAlign: TextAlign.right, //peletekan posisi tulisan
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}

void main() {
  runApp(LayoutRow());
}
