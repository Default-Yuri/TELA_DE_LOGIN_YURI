// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usuarioControle = TextEditingController();
  final TextEditingController _senhaControle = TextEditingController();
  String _bemvindo = "";

  void _mostraBemVindo() {
    setState(() {
      if (_usuarioControle.text.isNotEmpty && _senhaControle.text.isNotEmpty) {
        _bemvindo =
            "Sistema indisponível para o usuário ${_usuarioControle.text}!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 90,
              height: 90,
              child: Image.asset("assets/imagens/1.png"),
            ),
            const SizedBox(height: 50),
            TextFormField(
              controller: _usuarioControle,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Matricula",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 39, 30, 30),
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _senhaControle,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Senha",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 39, 30, 30),
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                child: const Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {
                  // Adicione a lógica para recuperar a senha aqui
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.5, 2.0],
                  colors: [Colors.black, Colors.black12],
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: _mostraBemVindo,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 197, 65, 65),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Acessar como administrador",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            // Exibir mensagem de boas-vindas
            Text(
              _bemvindo,
              style: const TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 239, 7, 7)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
