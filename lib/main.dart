import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CookBook',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Bienvenido a CookBook'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          children: [
            Image.asset(
              'assets/images/cookbook_icon.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 8), // Espacio entre el icono y el título
            Text(title),
          ],
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Explora un mundo de sabores, donde cada receta es un viaje culinario. Desde platos reconfortantes hasta delicias gourmet, encuentra inspiración para cada ocasión. ¡Sumérgete en el arte de la cocina y crea tus propias obras maestras! Bienvenido a Cookbook: donde los ingredientes se convierten en experiencias inolvidables.',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PantallaDeReceta()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class PantallaDeReceta extends StatelessWidget {
  const PantallaDeReceta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de Receta'),
      ),
      body: const Center(
        child: Text('Aquí va la información de la receta'),
      ),
    );
  }
}
