import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleApp extends State {
  var _warna = Colors.red;
  var _ukuranTeks = 25.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: (Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tugas Metode Pemrograman Modern"),
                    Text("Dani Sefianto"),
                    Text("21060120120024"),
                  ],
                ),
              ),
              AnimatedDefaultTextStyle(
                  child: Container(
                    child: Text('Teknik Elektro Undip'),
                  ),
                  style: TextStyle(color: _warna, fontSize: _ukuranTeks),
                  duration: const Duration(seconds: 1)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _warna = Colors.pink;
                      _ukuranTeks = 20.0;
                    });
                  },
                  child: Text("Animation Running Out"))
            ],
          ),
        )),
      ),
    );
  }
}
