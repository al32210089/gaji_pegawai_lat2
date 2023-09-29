import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gaji Pegawai',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GajiPegawaiPage(),
    );
  }
}

class GajiPegawaiPage extends StatefulWidget {
  @override
  _GajiPegawaiPageState createState() => _GajiPegawaiPageState();
}

class _GajiPegawaiPageState extends State<GajiPegawaiPage> {
  double gajiPokok = 0;
  double tunjangan = 0;
  double potongan = 0;
  double totalGaji = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Gaji Pegawai'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Gaji Pokok'),
                onChanged: (value) {
                  setState(() {
                    gajiPokok = double.parse(value);
                  });
                },
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Tunjangan'),
                onChanged: (value) {
                  setState(() {
                    tunjangan = double.parse(value);
                  });
                },
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Potongan'),
                onChanged: (value) {
                  setState(() {
                    potongan = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Total Gaji: $totalGaji'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    totalGaji = gajiPokok + tunjangan - potongan;
                  });
                },
                child: Text('Hitung Gaji'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}