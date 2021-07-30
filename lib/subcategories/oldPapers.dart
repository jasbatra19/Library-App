import 'package:flutter/material.dart';

import '../books.dart';

class OldQuesPaper extends StatefulWidget {
  const OldQuesPaper({Key? key}) : super(key: key);

  @override
  _OldQuesPaperState createState() => _OldQuesPaperState();
}

class _OldQuesPaperState extends State<OldQuesPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Old Question Papers"),
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
                pitems.length,
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
                            child: Image.asset(pitems[index].image),
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
