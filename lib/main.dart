import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:beats_app/src/pages/home_page.dart';
import 'package:beats_app/src/providers/productos_providers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (BuildContext context)=>ProductosProvider(), )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Beats App',
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomePage(),
        },
      ),
    );
  }
}
