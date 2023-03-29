import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: const Color.fromRGBO(36, 172, 172, 0.808),
      child: FittedBox(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 250)),
                Column(
                  children: const [
                    Text(
                        '                                                                                                                                                                                                                                                                                                                                                                ')
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      '© 2023 All Rights Reserved Tarjetas Integrales S.A. de C.V.       ',
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
