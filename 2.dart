import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double personalDataTextSize = 18; // Ukuran teks "Personal Data"

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff000000),
            ),
            onPressed: () {
              // Tambahkan fungsionalitas tombol kembali di sini.
            },
          ),
          title: Row(
            children: [
              SizedBox(width: 10), // Spasi antara ikon dan teks
              Text(
                "LIST PERSONAL DATA",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.bold, // Teks cetak tebal
                  fontSize:
                      personalDataTextSize, // Gunakan variabel untuk mengatur ukuran teks
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                title: SizedBox(
                  width: 373.0,
                  height: 97.0,
                  child: Container(
                    margin: EdgeInsets.all(5), // Margin sebesar 5
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff000000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10), // Jarak dari sisi kiri
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Reiki Syahmaulana \n",
                                style: TextStyle(
                                  color: Colors
                                      .black, // Ganti warna teks sesuai yang Anda inginkan
                                  fontSize:
                                      16, // Ganti ukuran teks sesuai yang Anda inginkan
                                  fontWeight:
                                      FontWeight.bold, // Teks cetak tebal
                                ),
                              ),
                              TextSpan(
                                text: "reiky.mirzha321@gmail.com\n",
                                style: TextStyle(
                                  color: Colors
                                      .blue, // Ganti warna teks sesuai yang Anda inginkan
                                  fontSize:
                                      14, // Ganti ukuran teks sesuai yang Anda inginkan
                                ),
                              ),
                              TextSpan(
                                text: "Jalan Raya Jember No.KM13",
                                style: TextStyle(
                                  color: Colors
                                      .black, // Ganti warna teks sesuai yang Anda inginkan
                                  fontSize:
                                      14, // Ganti ukuran teks sesuai yang Anda inginkan
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                trailing: SizedBox(width: 10),
              ),
            );
          },
        ),
      ),
    );
  }
}
