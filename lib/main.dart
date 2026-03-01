import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Aplikasi Ter Gokil Se-Asia Tenggara';
    String name = 'Yasrul GANSS';
    String message = 'Halo nama saya $name, selamat datang di $title';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 39, 156, 195),
          title: Text(title),
        ),
        body: Center(child: Text(message)),
      ),
    );
  }
}
