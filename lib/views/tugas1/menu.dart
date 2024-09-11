import 'package:flutter/material.dart';
import 'package:overshare/views/tugas1/ganjilgenap.dart';
import 'package:overshare/views/tugas1/kalkulator.dart';

class MenuTugas1 extends StatelessWidget {
  const MenuTugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Judul
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Pilih Menu:",
                style: TextStyle(fontSize: 36),
              ),
            ),

            // Menu 1
            SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Kalkulator()));
                      },
                      child: const Text('Kalkulator')),
                )),
            // Menu 2
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Ganjilgenap()));
                    },
                    child: const Text('Cek Ganjil Genap')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
