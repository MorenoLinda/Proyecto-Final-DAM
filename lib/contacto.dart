import 'package:flutter/material.dart';
import 'package:moreno/inicio.dart';
import 'package:moreno/nosotros.dart';
import 'package:moreno/contacto.dart';
import 'package:moreno/formularios.dart';

class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdbdbdb),
      appBar: AppBar(
        title: const Text('La Huellita', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.purple),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.pets,
                        color: Colors.black,
                        size: 70,
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        "La Huellita",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              // height: 200,
              color: Colors.black,
              thickness: 1,
            ),
            ListTile(
              title: Text("Inicio"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Inicio()));
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text("Nosotros"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Nosotros()));
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("Contacto"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Contacto()));
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("Formularios"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Formularios()));
              },
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/489/489868.png',
                width: 170,
                height: 170,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '¿Tienes alguna duda?',
                          style: TextStyle(
                            fontFamily: 'Noto Serif',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Llamanos',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFAA87D6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '656-123-4567',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        letterSpacing: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    '¡Envianos un mensaje!',
                    style: const TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Correo',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: 300,
                    child: TextField(
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Mensaje',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff616161),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      maxLines: 10,
                      minLines: 1,
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    child: Text('Enviar'),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Text(
                    'Ubicación',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Text(
                    'Nogal 306, Insurgentes, 32150 Cd. Juarez, Chih.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Image.network(
                    'data:image/jpeg;base64,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',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
