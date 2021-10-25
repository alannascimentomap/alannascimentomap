// ignore_for_file: camel_case_types, prefer_const_constructors, deprecated_member_use, avoid_print, prefer_const_literals_to_create_immutables, void_checks, avoid_returning_null_for_void, avoid_unnecessary_containers, sized_box_for_whitespace, unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String email = '';
  String pass = '';

  void limpaCampos() {
    email = '';
    pass = '';
  }

  Widget _body() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 170,
              height: 170,
              child: Image.asset('assets/imagem/logo.png'),
            ),
            Container(
              height: 50,
            ),
            Card(
              color: Colors.deepOrange[200],
              child: Column(children: [
                SizedBox(
                  width: 350,
                  height: 50,
                  child: TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'email', border: OutlineInputBorder())),
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: TextField(
                      onChanged: (text) {
                        pass = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'password', border: OutlineInputBorder())),
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                    textColor: Colors.red,
                    color: Colors.black,
                    onPressed: () {
                      if (email == 'alan' && pass == '123') {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else if (email == '' || pass == '') {
                        showAlertDialog2(context);
                      } else {
                        showAlertDialog1(context);
                      }
                    },
                    child: SizedBox(
                      width: 350,
                      child: Text(
                        'entrar',
                        textAlign: TextAlign.center,
                      ),
                    ))
              ]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /*  Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset('assets/imagem/campeao2019.jpg',
                  fit: BoxFit.cover)),*/
          _body()
        ],
      ),
    );
  }

  void onPressed() {}
}

//função só funciona no mobile, utilizar pop-up para site é outro.
showAlertDialog1(BuildContext context) {
  // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    //title: Text("Deu bom..."),
    content: Text("Usuário ou senha incorreta"),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

showAlertDialog2(BuildContext context2) {
  // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context2).pop();
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta2 = AlertDialog(
    //title: Text("Deu bom..."),
    content: Text("Preencha todos os campos. Há campos vazios!!!!"),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
      context: context2,
      builder: (BuildContext context2) {
        return alerta2;
      });
}
