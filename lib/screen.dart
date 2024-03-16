import 'package:flutter/material.dart';
import 'dart:convert';
import 'item.dart';
import 'detalles.dart';

class JsonListViewScreen extends StatefulWidget {
  const JsonListViewScreen({super.key});

  @override
  JsonListViewScreenState createState() => JsonListViewScreenState();
}

class JsonListViewScreenState extends State<JsonListViewScreen> {
  late List<Item> items = [];

  @override
  void initState() {
    super.initState();
    loadItems();
  }

  Future<void> loadItems() async {
    // Carga el JSON desde el archivo assets
    String jsonString =
        await DefaultAssetBundle.of(context).loadString('assets/data_scrum.json');
    List<dynamic> jsonList = json.decode(jsonString);

    // Convierte el JSON en objetos Dart
    setState(() {
      items = jsonList.map((item) => Item.fromJson(item)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blue,
        title: const Text('SCRUM', style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold))),
      backgroundColor: Colors.cyan[100],
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              // Navega a la pantalla de detalles cuando se hace clic en un elemento
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailsScreen(itemName: items[index].name, itemImage: items[index].image, itemDescription: items[index].description, itemExample:items[index].example ),
                ),
              );
            },
            hoverColor: const Color.fromARGB(255, 41, 61, 105).withOpacity(0.1),
            child: ListTile(
              title: Text(items[index].name,
              textAlign: TextAlign.center),
            ),
          );
        },
      ),
    );
  }
}
