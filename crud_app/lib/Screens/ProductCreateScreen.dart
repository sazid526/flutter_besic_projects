import 'package:crud_app/RestApi/RestClient.dart';
import 'package:crud_app/Style/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({Key? key}) : super(key: key);

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  Map<String, String> FormValues = {
    "Img": "",
    "ProductCode": "",
    "ProductName": "",
    "Qty": "",
    "TotalPrice": "",
    "UnitPrice": ""
  };

  bool Loading = false;
  InputOnChange(Mapkey, textValue) {
    setState(() {
      FormValues.update(Mapkey, (value) => textValue);
    });
  }

   FormOnSubmit() async{
    if (FormValues["Img"]!.length == 0) {
      ErrorToast("Image Link Required");
    } else if (FormValues["ProductCode"]!.length == 0) {
      ErrorToast("Product Code Required");
    } else if (FormValues["ProductName"]!.length == 0) {
      ErrorToast("Product Name Required");
    } else if (FormValues["Qty"]!.length == 0) {
      ErrorToast("Product Quantity Required");
    } else if (FormValues["TotalPrice"]!.length == 0) {
      ErrorToast("Total Price Required");
    } else if (FormValues["UnitPrice"]!.length == 0) {
      ErrorToast("Unit Price Required");
    }else{
      setState(() {
        Loading = true;
      });
      await ProductCreateRequest(FormValues);
      setState(() {
        Loading = false;
      });
    }
  }

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
            child: Loading? (CircularProgressIndicator()):SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: MyAppInputDecoration("Product Name"),
                    onChanged: (textValue) {
                      InputOnChange("ProductName", textValue);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: MyAppInputDecoration("Product Code"),
                    onChanged: (textValue) {
                      InputOnChange("ProductCode", textValue);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: MyAppInputDecoration("Product Image"),
                    onChanged: (textValue) {
                      InputOnChange("Img", textValue);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: MyAppInputDecoration("Unit Price"),
                    onChanged: (textValue) {
                      InputOnChange("UnitPrice", textValue);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: MyAppInputDecoration("Total Price"),
                    onChanged: (textValue) {
                      InputOnChange("TotalPrice", textValue);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppDropDownStyle(DropdownButton(
                    value: FormValues["Qty"],
                    items: [
                      DropdownMenuItem(
                        child: Text("Select Qty"),
                        value: "",
                      ),
                      DropdownMenuItem(
                        child: Text("1 pcs"),
                        value: "1 pcs",
                      ),
                      DropdownMenuItem(
                        child: Text("2 pcs"),
                        value: "2 pcs",
                      ),
                      DropdownMenuItem(
                        child: Text("3 pcs"),
                        value: "3 pcs",
                      ),
                      DropdownMenuItem(
                        child: Text("4 pcs"),
                        value: "4 pcs",
                      ),
                    ],
                    onChanged: (textValue) {
                      InputOnChange("Qty", textValue);
                    },
                    isExpanded: true,
                    underline: Container(),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: ElevatedButton(
                        style: AppButtonStyle(),
                        onPressed: () {
                          FormOnSubmit();
                        },
                        child: SuccessButtonChild("Submit")),
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
