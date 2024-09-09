import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas1 extends StatefulWidget {
  const Tugas1({super.key});

  @override
  State<Tugas1> createState() => _Tugas1State();
}

class _Tugas1State extends State<Tugas1> {
  int values = 0;
  var result = '';
  final TextEditingController myController = TextEditingController();

  void check() {
    setState(() {
      values = int.tryParse(myController.text) ?? 0;
      if (values > 0) {
        if (values % 2 == 0) {
          result = 'Bilangan $values adalah Genap';
        } else {
          result = 'Bilangan $values adalah Ganjil';
        }
      } else {
        result = 'Masukkan Bilangan Terlebih Dahulu';
      }
    });
  }

  void _tambah() {
    setState(() {
      int currentValue = int.tryParse(myController.text) ?? 0;
      myController.text = (currentValue + 1).toString();
    });
  }

  void _kurang() {
    setState(() {
      int currentValue = int.tryParse(myController.text) ?? 0;
      myController.text = (currentValue - 1).toString();
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Menentukan Bilangan Ganjil/Genap",
                style: GoogleFonts.josefinSans(fontSize: 20)),
            const SizedBox(height: 20),

            // Input field
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      _kurang();
                    },
                    icon: const Icon(Icons.remove)),
                SizedBox(
                  width: 150,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: myController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan Angka',
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      _tambah();
                    },
                    icon: const Icon(Icons.add)),
              ],
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              child: OutlinedButton(
                onPressed: check,
                child: const Text('Cek'),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              result,
              style: GoogleFonts.josefinSans(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
