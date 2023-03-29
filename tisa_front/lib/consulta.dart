import 'package:flutter/material.dart';

import 'consultaBody.dart';
import 'footer.dart';
import 'header.dart';

class Consulta extends StatefulWidget {
  const Consulta({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _State createState() => _State();
}

class _State extends State<Consulta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.width / 6),
        child: Column(
          children: const [Header()],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [Consultabody()],
      )),
      bottomNavigationBar: const Footer(),
    );
  }
}
