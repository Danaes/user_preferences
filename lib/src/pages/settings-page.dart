import 'package:flutter/material.dart';
import 'package:preferencias_usuario_app/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _colorSecundario = false;
  int _genero = 1;
  String _nombre = 'Daniel';

  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();

    _textEditingController = new TextEditingController(text: _nombre);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Settings', style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario,
            title: Text('Color secundario'),
            onChanged: (value) {
              _colorSecundario = value;
              setState(() {});
            },
          ),

          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _genero,
            onChanged: (value){
              _genero = value;
              setState(() { });
            },
          ),

          RadioListTile(
            value: 2,
            title: Text('Femenio'),
            groupValue: _genero,
            onChanged: (value){
              _genero = value;
              setState(() { });
            },
          ),

          Divider(),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona'
              ),
              onChanged: (value){
                
              },
            ),
          )
        ],
      )
    );
  }
}