import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  final TextEditingController _angka1 = TextEditingController();
  final TextEditingController _angka2 = TextEditingController();

  double _output = 0;

  // Fungsi untuk operasi penjumlahan
  void _hitung(String operator) {
    setState(() {
      double angka1 = double.parse(_angka1.text);
      double angka2 = double.parse(_angka2.text);

      switch (operator) {
        case '+':
          _output = angka1 + angka2;
          break;
        case '-':
          _output = angka1 - angka2;
          break;
        case 'x':
          _output = angka1 * angka2;
          break;
        case '/':
          // Cek pembagian dengan nol
          if (angka2 != 0) {
            _output = angka1 / angka2;
          } else {
            _output = double.infinity; // Pembagian dengan 0
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Sederhana'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Padding(
                padding: EdgeInsets.only(bottom: 24.0),
                child: Center(
                    child: Text(
                  "Kalkulator Sederhana",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                )),
              ),

              // Label Angka pertama
              const Text(
                "Masukkan Angka Pertama",
                textAlign: TextAlign.start,
              ),
              // Input Angka 1
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: _angka1,
                ),
              ),

              // Label Angka Kedua
              const Text(
                "Masukkan Angka Kedua",
                textAlign: TextAlign.start,
              ),
              // Input Angka 2
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: _angka2,
                ),
              ),

              // Divider

              const Divider(
                thickness: 2,
              ),

              const Center(child: Text("Pilih Operasi")),

              const Divider(
                thickness: 2,
              ),

              // Tombol operasi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => _hitung('+'),
                    child: const Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () => _hitung('-'),
                    child: const Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: () => _hitung('x'),
                    child: const Text('x'),
                  ),
                  ElevatedButton(
                    onPressed: () => _hitung('/'),
                    child: const Text('/'),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Hasil
              Center(
                child: Text(
                  "Hasil: $_output",
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(
      home: Kalkulator(),
    ));
