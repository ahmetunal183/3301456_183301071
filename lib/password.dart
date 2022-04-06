import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("yeni şifre"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 125, 99, 133),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: "mevcut şifrenizi giriniz",
                icon: Icon(Icons.password),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: "yeni şifre giriniz ",
                icon: Icon(Icons.password),
              ),
            ),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: "tekrar şifrenizi giriniz",
                icon: Icon(Icons.password),
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
