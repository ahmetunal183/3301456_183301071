// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Create.dart';
import 'package:flutter_application_1/menu.dart';
import 'package:flutter_application_1/Password.dart';
/*import 'package:mobil_projem/menu.dart';*/

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 180, 194),
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 40),
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
            width: double.infinity,
            height: 400,
            decoration: const BoxDecoration(
                color: Color.fromARGB(213, 246, 247, 245),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Giriş Yap",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Telefon Numarası",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: Color.fromARGB(255, 219, 120, 120),
                obscureText: hide,
                decoration: InputDecoration(
                    hintText: "Şifre",
                    suffixIcon: IconButton(
                        color: Color.fromARGB(255, 219, 120, 120),
                        onPressed: () {
                          setState(() {
                            hide = !hide;
                          });
                        },
                        icon: hide
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility))),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Password())),
                  child: Text(
                    "Şifremi Unuttum?",
                    style: TextStyle(color: Color.fromARGB(255, 219, 120, 120)),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 219, 120, 120),
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 50)),
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Menu())),
                  child: Text("Giriş Yap"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hesabınız yok mu ?"),
                  TextButton(
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Create())),
                      child: Text(
                        "Kayıt Ol",
                        style: TextStyle(
                            color: Color.fromARGB(255, 219, 120, 120)),
                      ))
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
