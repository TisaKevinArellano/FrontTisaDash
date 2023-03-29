import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:tisa_front/loginBody.dart';
import 'package:tisa_front/recarga.dart';
import 'consulta.dart';
import 'footer.dart';
import 'header.dart';

void main() {
  runApp(MaterialApp(
    builder: (context, widget) => ResponsiveWrapper.builder(
      BouncingScrollWrapper.builder(context, widget!),
      maxWidth: 1600,
      minWidth: 450,
      defaultScale: true,
      breakpoints: [
        const ResponsiveBreakpoint.resize(800, name: MOBILE),
        const ResponsiveBreakpoint.autoScale(800, name: TABLET),
        const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
        const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      ],
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      '/Paginaprincipal': (BuildContext context) => HomePage(),
      '/Consultar': (BuildContext context) => const Consulta(),
      '/Recargar': (BuildContext context) => const Recargar(),
    },
  ));
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _State createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.width /6 ),
          child: Column(
            children: const [Header()],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: const [
            LoginBody(),
        ])),
        bottomNavigationBar: const Footer());
  }
}
