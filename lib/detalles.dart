import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final String itemDescription;
  final String itemExample;

  const ItemDetailsScreen({super.key, required this.itemName, required this.itemImage, required this.itemDescription, required this.itemExample});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Detalles'),
      ),
      backgroundColor: Colors.lightBlue[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Ajusta el padding según sea necesario
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(itemImage, width: 300),
              const SizedBox(height: 20), // Espacio entre la imagen y el texto
              Text(
                itemName,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10), // Espacio entre el nombre y la descripción
              Text(
                'Descripcion: $itemDescription',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10), // Espacio entre la descripción y el ejemplo
              Text(
                'Ejemplo: $itemExample',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
