import 'package:flutter/material.dart';
import 'package:moreno/inicio.dart';
import 'package:moreno/nosotros.dart';
import 'package:moreno/contacto.dart';

class Formularios extends StatelessWidget {
  const Formularios({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:
              const Text('La Huellita', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.purple),
          centerTitle: true,
          bottom: TabBar(
            indicator: BoxDecoration(color: Color(0xffd1d1d1)),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                  child: Text(
                'Cliente',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Mascota',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Empleado',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Citas',
                style: TextStyle(color: Colors.black),
              )),
            ],
          ),
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
        body: TabBarView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Clientes',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Text(
                    'Para poder tener una cita, el cliente (Dueño de la mascota) debera ingresar los datos que se mustren en el formulario,  para tener sus datos guardados  y asi agendar su  cita con una mejor organizacion',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/53/53086.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Text(
                    'Click en el boton para ingresar al formulario',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    child: const Text('Formulario'),
                    onPressed: () {
                      // Navega a la segunda pantalla usando una ruta con nombre
                      Navigator.pushNamed(context, '/cliente');
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mascotas',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Text(
                    'Es importante tener los datos de tu masocta, para que la cita tenga una mejor experiencia y sea mas rapida',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Image.network(
                    'https://static.thenounproject.com/png/13421-200.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Text(
                    'Click en el boton para ingresar al formulario',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    child: const Text('Formulario'),
                    onPressed: () {
                      // Navega a la segunda pantalla usando una ruta con nombre
                      Navigator.pushNamed(context, '/mascota');
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Empleados',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Text(
                    'Si quieres un tabajo e ingresar a nuestra veterinaria La Huellita, deberas ingresar tus datos en el formulario, para asi poder lamrte y tenerte con nosotros 😉',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Image.network(
                    'data:image/png;base64,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',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Text(
                    'Click en el boton para ingresar al formulario',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    child: const Text('Formulario'),
                    onPressed: () {
                      // Navega a la segunda pantalla usando una ruta con nombre
                      Navigator.pushNamed(context, '/empleado');
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Citas',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Text(
                    'Despues de ingresar los datos requeridos \n- Cliente\n- Mascota\nYa solo tendras que ingresar los datos generales de tu cita para agendarla',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/4781/4781427.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                  child: Text(
                    'Click en el boton para ingresar al formulario',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    child: const Text('Formulario'),
                    onPressed: () {
                      // Navega a la segunda pantalla usando una ruta con nombre
                      Navigator.pushNamed(context, '/citas');
                    },
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
