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
  bool isChecked = false; // Add this variable to track checkbox state

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfffffdfd),
          title: const Text(
            "Personal Form",
            style: TextStyle(color: Color(0xff000000)),
          ),
          actions: [
            IconButton(
              icon: Image.asset('assets/icons8-list-view-50.png'),
              onPressed: () {
                // Add your functionality for the right side action button here.
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kotak input untuk nama
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Full Name'),
                  Container(
                    width: 380,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter FullName',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Kotak input untuk alamat email
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email'),
                  Container(
                    width: 380,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Kotak input untuk nomor telepon
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(''),
                      Container(
                        width: 230,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter phone number',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(''),
                      Container(
                        margin: EdgeInsets.only(right: 12.0),
                        width: 98,
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Verify',
                            labelText: 'Verify',
                            labelStyle: TextStyle(
                              color: Color(0xfff495ff),
                            ),
                            fillColor: Color(0xFFF5F5F5),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .purple), // Set the focused border color
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .purpleAccent), // Set the border color when not focused
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Kotak input untuk Personal ID Number
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Personal ID Number'),
                  Container(
                    width: 380,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Value',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Kotak input untuk Address
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Address'),
                  Container(
                    width: 380,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your text here',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Kotak input untuk Choose Date
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose Date'),
                  Container(
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Select date',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                            Icons.calendar_today), // Tambahkan ikon kalender
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Checkbox with text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'I agree to the terms and conditions', // Replace with your text
                  ),
                ],
              ),
            ),

            // Tombol Submit
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 380,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk menangani submit di sini
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff2d00e4), // Warna latar belakang ungu
                    padding: EdgeInsets.symmetric(
                        vertical: 10), // Atur padding secara vertikal
                    alignment: Alignment.center, // Atur alignment ke flex-start
                  ),
                  child: Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
