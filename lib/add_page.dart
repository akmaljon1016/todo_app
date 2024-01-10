import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  TextEditingController sarlavhaController = TextEditingController();
  TextEditingController kontentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text(
          "Saqlash Oynasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: sarlavhaController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Sarlavha"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: kontentController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Kontent"),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              "Saqlash",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            minWidth: 200,
            height: 50,
          )
        ],
      ),
    );
  }
}
