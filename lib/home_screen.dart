import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home_Screen extends StatelessWidget {
  const home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    const primerParrafo = TextStyle(fontSize: 18, color: Colors.red);
    const text14 = TextStyle(fontSize: 14);
    int contador = 8;

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          elevation: 10,
          shadowColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Entrar a la app', style: primerParrafo),
                Text('$contador', style: text14),
                
              ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: const Icon(Icons.delete, color: Colors.white,),
          onPressed: () {
            contador++;
            print('$contador');
           },
          ),
        );
  }
}
