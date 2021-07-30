import 'package:flutter/material.dart';
import 'package:libraryapp/books.dart';

class Magazine extends StatefulWidget {
  const Magazine({Key? key}) : super(key: key);

  @override
  _MagazineState createState() => _MagazineState();
}

class _MagazineState extends State<Magazine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magazines"),
        backgroundColor: Colors.teal.shade400,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10,
              children: List.generate(
                mitems.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      // i = product[index].id;
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => addToCartClothes()));
                    },
                    child: Card(
                      color: Colors.teal.shade100,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            // child: Image.asset("${items[index].image}")
                            child: Image.asset(mitems[index].image),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
