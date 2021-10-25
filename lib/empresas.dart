// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print, unused_field, deprecated_member_use, unnecessary_null_comparison, non_constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class empresasCad extends StatefulWidget {
  const empresasCad({Key? key}) : super(key: key);

  @override
  _empresasCadState createState() => _empresasCadState();
}

class _empresasCadState extends State<empresasCad> {
  final _formkey = GlobalKey<FormState>();
  String nome = '';
  String end = '';
  String cnpj = '';
  String tel = '';
  String email = '';
  String resp = '';

  void LimpaCampos() {
    nome = '';
    end = '';
    cnpj = '';
    tel = '';
    email = '';
    resp = '';
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              child: Column(
                children: [
                  Form(
                    //  key: formkey,
                    child: TextFormField(
                      onChanged: (x) {
                        nome = x;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Campo obrigatório";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'Nome da empresa',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 500,
              child: Column(
                children: [
                  Form(
                    //   key: formkey,
                    child: TextFormField(
                      onChanged: (x) {
                        end = x;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Campo obrigatório";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'Endereço',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 500,
              child: Column(
                children: [
                  Form(
                    key: _formkey,
                    child: TextFormField(
                      onChanged: (x) {
                        cnpj = x;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Campo obrigatório";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: '*Cnpj*',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 500,
              child: Column(
                children: [
                  Form(
                    child: TextFormField(
                      onChanged: (x) {
                        tel = x;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Campo obrigatório";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'Telefone',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 500,
              child: Column(
                children: [
                  Form(
                    child: TextFormField(
                      onChanged: (x) {
                        email = x;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Campo obrigatório";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'E-mail',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 500,
              child: Column(
                children: [
                  Form(
                    child: TextFormField(
                      onChanged: (x) {
                        resp = x;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Campo obrigatório";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'Responsavel',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    //   if (_formkey.currentState!.validate()) {
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //         SnackBar(content: Text('processando dados')));
                    //   }
                  },
                  child: Text('Verifica')),
            ),
          ],
        ),
      ),
    );
  }
}
