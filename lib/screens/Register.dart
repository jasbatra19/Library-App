import 'package:flutter/material.dart';
import 'package:libraryapp/screens/home.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
        backgroundColor: Colors.teal.shade400,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70, left: 20, right: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(20)),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Enter name",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  icon: Icon(
                    Icons.person,
                    color: Colors.teal.shade900,
                  )),
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(20)),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Enter email",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  icon: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  )),
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Create password",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  icon: Icon(
                    Icons.password,
                    color: Colors.teal.shade900,
                  )),
              obscureText: true,
            ),
          ),
          Center(
            child: Container(
              width: 200,
              margin: EdgeInsets.all(70),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.teal.shade400),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    "Create My Account",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
