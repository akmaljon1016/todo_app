import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/add_page.dart';
import 'package:todo_app/model/todo_model.dart';

late Box todoBox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ToDoModelAdapter());
  todoBox = await Hive.openBox("todoBox");
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Qaydnoma",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          color: Colors.blue,
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "title",
                style: TextStyle(color: Colors.white),
              ),
              Text("Desc", style: TextStyle(color: Colors.white))
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => AddPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

//Listview Listview.builder
