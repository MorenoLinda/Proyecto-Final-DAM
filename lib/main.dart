import 'package:flutter/material.dart';
import 'package:moreno/inicio.dart';
import 'package:moreno/nosotros.dart';
import 'package:moreno/contacto.dart';
import 'package:moreno/formularios.dart';
import 'package:moreno/formularios/cliente.dart';
import 'package:moreno/formularios/mascota.dart';
import 'package:moreno/formularios/empleado.dart';
import 'package:moreno/formularios/citas.dart';
import 'package:moreno/formularios/cobros.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'La Huellita',
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/primera',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/primera': (context) => const Inicio(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/segunda': (context) => const Nosotros(),
      '/tercera': (context) => const Contacto(),
      '/cuarta': (context) => const Formularios(),
      '/cliente': (context) => const Cliente(),
      '/mascota': (context) => const Mascota(),
      '/empleado': (context) => const Empleado(),
      '/citas': (context) => const Citas(),
      '/cobros': (context) => const Cobros(),
    },
  ));
}
