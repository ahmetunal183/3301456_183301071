import 'package:flutter/material.dart';

class Bm extends StatelessWidget {
  const Bm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("yağ oranı hesaplama"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 125, 99, 133),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "boyunuzu giriniz cm olarak",
                icon: Icon(Icons.trending_down),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "kilonuzu giriniz kg olarak",
                icon: Icon(Icons.line_weight),
              ),
            ),
            const SizedBox(height: 15),
            RaisedButton(
              onPressed: (() {}),
              child: const Text(
                "calculate",
                style:
                    const TextStyle(color: Color.fromARGB(255, 125, 52, 103)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
