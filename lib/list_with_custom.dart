import 'package:flutter/material.dart';

class list_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list_custom"),
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        actions: const [
          Icon(Icons.shopping_cart),
        ],
      ),


      body: ListView.custom(
         // childrenDelegate: SliverChildListDelegate(
          //  List.generate(20, (index) {
           //   return const Card(
              //  color: Colors.purpleAccent,
              //  child: Text("card 1"),
            //  );

          //  })

         //)
        childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return const Card(
                color: Colors.blue,
                child: Text("Card 1"),
              );
            }
        ),
    ),
    );
  }
}
