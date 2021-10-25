// ignore_for_file: avoid_print, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset('assets/imagem/eu.png'),
                ),
                accountName: Text('alan'),
                accountEmail: Text('alan.nascimento@maptechnology.com.br')),
            ListTile(
              title: Text('Inicio'),
              subtitle: Text('data'),
            ),
            ListTile(
              title: Text('Desafio'),
              subtitle: Text('Tela desafio flutterando'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/desafio');
              },
            ),
            ListTile(
              title: Text('Empresas'),
              subtitle: Text('Tela de cadastro de empresas'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/empresas');
              },
            ),
            ListTile(
              title: Text('Logout'),
              subtitle: Text('Finalizar a sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [customSwitch()],
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customSwitch(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    width: 70,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    width: 45,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  )
                ],
              ),
              Text('contador: $count'),
            ],
          )),

      /*Center(
           child: GestureDetector(
        child: Text(
          'Contador alan: $count',
          style: const TextStyle(fontSize: 30.0),
        ),
        onTap: () {
          setState(() {
            count++;
            print(count);
          });
        },
      )
          ),*/
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.location_searching),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }

  onChanged(value) {}
}

class customSwitch extends StatelessWidget {
  const customSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instancia.isdarktheme,
        onChanged: (value) {
          AppController.instancia.changeTheme();
        });
  }
}
