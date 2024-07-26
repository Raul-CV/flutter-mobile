import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class counter_Screen extends StatefulWidget {
  const counter_Screen({super.key});

  @override
  State<counter_Screen> createState() => _counter_ScreenState();
}

class _counter_ScreenState extends State<counter_Screen> {
  int contador = 8;


  @override
  Widget build(BuildContext context) {
    const primerParrafo = TextStyle(fontSize: 18, color: Colors.red);
    const text14 = TextStyle(fontSize: 14);
    

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador'),
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
        floatingActionButton: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blue,
              child: const Icon(Icons.delete, color: Colors.white,),
              onPressed: () => setState(() => contador = 0)
              ),
             
            FloatingActionButton(
              backgroundColor: Colors.blue,
              child: const Icon(Icons.exposure_minus_1_rounded, color: Colors.white,),
              onPressed: () 
              {
                contador--;
                  if (contador == -1){
                    contador = 0;
                  }
                setState(() {
                  
                });
               },
              ),

              FloatingActionButton(
              backgroundColor: Colors.blue,
              child: const Icon(Icons.exposure_plus_1_outlined, color: Colors.white,),
              onPressed: () {
                contador++;
                if (contador == 10){
                    contador = 0;
                  }
                setState(() {
                  
                });
               },
              ),
          ],
        ),
        );
  }
}
