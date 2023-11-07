import 'package:crud_app/Style/Style.dart';
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
          ScreenBackground(context),
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: MyAppInputDecoration("Product Name"),
                    onChanged: (value){

                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: MyAppInputDecoration("Product Code"),
                    onChanged: (value){

                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: MyAppInputDecoration("Product Image"),
                    onChanged: (value){

                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: MyAppInputDecoration("Unit Price"),
                    onChanged: (value){

                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: MyAppInputDecoration("Total Price"),
                    onChanged: (value){

                    },
                  ),
                  SizedBox(height: 20,),

                  AppDropDownStyle(
                      DropdownButton(
                        value: "",
                        items: [
                          DropdownMenuItem(child: Text("Select Qty"),value: "",),
                          DropdownMenuItem(child: Text("1 pcs"),value: "1 pcs",),
                          DropdownMenuItem(child: Text("2 pcs"),value: "2 pcs",),
                          DropdownMenuItem(child: Text("3 pcs"),value: "3 pcs",),
                          DropdownMenuItem(child: Text("4 pcs"),value: "4 pcs",),

                        ],
                        onChanged: (value){

                        },
                        isExpanded: true,
                        underline: Container(),
                      )
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: ElevatedButton(onPressed: (){
                      
                    }, child: Text("Submit")),
                  )


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

