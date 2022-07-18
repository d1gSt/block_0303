// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Color blue = Color(0xff003366);
Color white = Color(0xfff2f3f4);
Color red = Color(0xfff08080);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme: GoogleFonts.openSansTextTheme(
              Theme.of(context).textTheme,
            ),
            colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: blue,
              onPrimary: white,
              secondary: blue,
              onSecondary: white,
              error: red,
              onError: Colors.black,
              background: blue,
              onBackground: white,
              surface: white,
              onSurface: Colors.black,
            )),
        home: const MyHomePage(title: 'Block 0303'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _ctrl = TextEditingController();

  late String answ;
  RegExp reg = RegExp(r'^0303');

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(children: [
              TextField(
                controller: _ctrl,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Nº'),
              ),
              OutlinedButton(
                  onPressed: () {
                    if (reg.hasMatch(_ctrl.text)) {
                      answ = 'nanana';
                      print('$answ - ${_ctrl.text}');
                    } else {
                      answ = 'blz';
                      print('$answ - ${_ctrl.text}');
                    }
                  },
                  child: Text('OK')),
            ]),
          ),
        )));
  }
}
