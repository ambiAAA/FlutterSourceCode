import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();

  int? num1 = 0, num2 = 0, hasil = 0;

  void penjumlahan() {
    setState(() {
      num1 = int.parse(angka1.text);
      num2 = int.parse(angka2.text);
      hasil = num1! + num2!;
    });
  }

  void pengurangan() {
    setState(() {
      num1 = int.parse(angka1.text);
      num2 = int.parse(angka2.text);
      hasil = num1! - num2!;
    });
  }

  void perkalian() {
    setState(() {
      num1 = int.parse(angka1.text);
      num2 = int.parse(angka2.text);
      hasil = num1! * num2!;
    });
  }

  void pembagian() {
    setState(() {
      num1 = int.parse(angka1.text);
      num2 = int.parse(angka2.text);
      hasil = num1! ~/ num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Calculator!'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: angka1,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
                hintText: 'Masukan angka 1',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: angka2,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
                hintText: 'Masukan angka 2',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Hasilnya Adalah: $hasil"),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    penjumlahan();
                    angka1.clear();
                    angka2.clear();
                  },
                  child: Text('penjumlahan')),
              ElevatedButton(
                  onPressed: () {
                    pengurangan();
                    angka1.clear();
                    angka2.clear();
                  },
                  child: Text('pengurangan'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    perkalian();
                    angka1.clear();
                    angka2.clear();
                  },
                  child: Text('perkalian')),
              ElevatedButton(
                  onPressed: () {
                    pembagian();
                    angka1.clear();
                    angka2.clear();
                  },
                  child: Text('pembagian')),
            ],
          )
        ],
      ),
    );
  }
}
