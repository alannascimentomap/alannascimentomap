// ignore_for_file: camel_case_types, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class desafiotinder extends StatefulWidget {
  const desafiotinder({Key? key}) : super(key: key);

  @override
  _desafiotinderState createState() => _desafiotinderState();
}

class _desafiotinderState extends State<desafiotinder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 150,
              height: 150,
              child: Image.asset('assets/imagem/logo.png'),
            ),
            Container(
                width: 10,
                height: 10,
                child: Text('Clube de Regatas do Flamengo')),
            SizedBox(
                width: 200,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      child: Text('Voltar')),
                )
                /*ElevatedButton( 
                cli
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                  child: Text(
                    'Voltar',
                    textAlign: TextAlign.center,
                  )),*/
                ),
          ],
        ),
      ),
    );
  }
}
