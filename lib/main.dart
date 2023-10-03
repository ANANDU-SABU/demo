import 'package:flutter/material.dart';

void main() {
  runApp(Furnitureapp());
}

class Furnitureapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'furniture Mart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FurnitureappHomepage(),
    );
  }
}

class FurnitureappHomepage extends StatelessWidget {
  final List<String> furnitureitems = [
    "table",
    "chair",
    "sofa",
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("WOOD ART "),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.location_city_rounded),
          SizedBox(width: 18),
          Icon(Icons.search),
          SizedBox(width: 18),
          Icon(Icons.more_vert)
          // const SizedBox(width: 18),
        ],
        elevation: 3.0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Explore Our Collection',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 200.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: furnitureitems.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    width: 150,
                    color: Colors.blue,
                    
                    
                    
                  );
                }),
          )
        ]),
      ),
    );
  }
}
