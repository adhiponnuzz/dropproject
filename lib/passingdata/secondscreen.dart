import 'package:dropproject/passingdata/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final product =dummyProducts.firstWhere((element) => element['id']==productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('My product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(product["image"]))),
            ),
            Text("${product["name"]}"),
            Text("${product["price"]}"),
            Text("${product["Description"]}"),
            Text("${product["rating"]}"),

          ],
        ),
      ),
    );
  }
}
