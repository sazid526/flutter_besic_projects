import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({Key? key}) : super(key: key);

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Product"),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value){

                  },
                ),
                TextFormField(
                  onChanged: (value){

                  },
                ),
                TextFormField(
                  onChanged: (value){

                  },
                ),
                TextFormField(
                  onChanged: (value){

                  },
                ),
                TextFormField(
                  onChanged: (value){

                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
