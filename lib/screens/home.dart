import 'package:flutter/material.dart';
import 'package:libraryapp/subcategories/fiction.dart';
import 'package:libraryapp/subcategories/magazines.dart';
import 'package:libraryapp/subcategories/nonfiction.dart';
import 'package:libraryapp/subcategories/oldPapers.dart';
import 'package:libraryapp/subcategories/selfHelp.dart';
import 'package:libraryapp/subcategories/subjects.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        backgroundColor: Colors.teal.shade400,
        centerTitle: true,
      ),
      body: ListView(children: [
        SizedBox(
          height: 100,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Fiction()));
            },
            child: Card(
              color: Colors.teal.shade50,
              elevation: 40,
              child: Center(
                child: Text(
                  "Fiction",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NFiction()));
            },
            child: Card(
              color: Colors.teal.shade50,
              elevation: 40,
              child: Center(
                child: Text(
                  "Non-Fiction",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Subject()));
            },
            child: Card(
              color: Colors.teal.shade50,
              elevation: 40,
              child: Center(
                child: Text(
                  "Subjects",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Magazine()));
            },
            child: Card(
              color: Colors.teal.shade50,
              elevation: 40,
              child: Center(
                child: Text(
                  "Magazines",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SelfHelp()));
            },
            child: Card(
              color: Colors.teal.shade50,
              elevation: 40,
              child: Center(
                child: Text(
                  "Self Help",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OldQuesPaper()));
            },
            child: Card(
              color: Colors.teal.shade50,
              elevation: 40,
              child: Center(
                child: Text(
                  "Old Question Papers",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
