// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class telalogin extends StatefulWidget {
  const telalogin({Key? key}) : super(key: key);

  @override
  _telaloginState createState() => _telaloginState();
}

class _telaloginState extends State<telalogin> {
  String user = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Text('Gestão de chamados - Suporte Map Technology'),
            //  child: Image.asset('assets/imagem/telalogo.png'),
          ),
          Container(
            height: 40,
          ),
          SizedBox(
            width: 500,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Usuário',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Container(
            height: 20,
          ),
          SizedBox(
            width: 500,
            child: TextField(
                decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),
          Container(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/empresas');
              },
              child: Text('Entrar'))
        ],
      ),
    );
  }
}
