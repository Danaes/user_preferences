import 'package:flutter/material.dart';
import 'package:preferencias_usuario_app/src/pages/home_page.dart';
import 'package:preferencias_usuario_app/src/pages/settings-page.dart';
import 'package:preferencias_usuario_app/src/share_prefs/preferencias_usuario.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
  
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final prefs = new PreferenciasUsuario();
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferenfias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName    : (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}