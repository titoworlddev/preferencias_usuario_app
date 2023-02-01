import 'package:flutter/material.dart';
import 'package:preferencias_usuario_app/src/shared_prefs/preferencias_usuario.dart';

import 'package:preferencias_usuario_app/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home';
  final prefs = PreferenciasUsuario();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferencias de usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: const MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario: ${prefs.colorSecundario}'),
          const Divider(),
          Text('Género: ${prefs.genero}'),
          const Divider(),
          Text('Nombre usuario: ${prefs.nombreUsuario}'),
          const Divider(),
        ],
      ),
    );
  }
}
