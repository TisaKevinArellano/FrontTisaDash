import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
        return FittedBox(
          // ignore: avoid_unnecessary_containers
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      IconButton(
                          icon: Image.network(
                            '/assets/logoTISA_SinFondo.png',
                          ),
                          iconSize: 140,
                          onPressed: () {
                            if(true){
                            Navigator.of(context).pushNamed('/Paginaprincipal');
                            }
                            Navigator.of(context).pushNamed('/Consultar');
                            
                          })
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                          '                                                                                                                                                                                           ')
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.blue, textStyle: const TextStyle(
                              color: Colors.blue,
                            )),
                        child: const Text(
                          'Hola erick    ',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Consultar');
                      
                        },
                      ),
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.blue, textStyle: const TextStyle(
                              color: Colors.blue,
                            )),
                        child: const Text(
                          'Recargar    ',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Recargar');
                       
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
    }
}
