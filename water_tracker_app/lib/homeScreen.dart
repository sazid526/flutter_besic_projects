import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _noOfGlassTEcontroler = TextEditingController(text: "1");
  List<WaterTrack> totalGlassOfWater = [];
  int totalAmount = 0;

  DeleteItem(index){
    setState(() {
      totalGlassOfWater.removeAt(index);


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Tracker"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text("Total Glass Of Water",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),),
              SizedBox(height: 10,),
              Text("${totalAmount}",style: TextStyle(
                fontSize: 50,
                color: Colors.green
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                      height: 40,
                      child: TextField(
                        controller: _noOfGlassTEcontroler,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(

                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.green,
                              width: 2
                            )

                          ),
                        ),
                      )),
                  SizedBox(width: 10,),
                  ElevatedButton(
                      onPressed: () {
                        int amount = int.tryParse(_noOfGlassTEcontroler.text.trim()) ?? 1;
                        WaterTrack waterTrack  = WaterTrack(DateTime.now(), amount);
                        totalGlassOfWater.add(waterTrack);
                        totalAmount += amount;
                        setState(() {
                          _noOfGlassTEcontroler.text = '1';

                        });

                      },
                      child: Text("Add"))
                ],
              ),
              SizedBox(height: 15,),
              Expanded(
                child: ListView.builder(
                  itemCount: totalGlassOfWater.length,
                    reverse: true,
                    itemBuilder: (context, index){
                    return Card(
                      child: ListTile(
                        onLongPress: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return Expanded(
                                    child: AlertDialog(
                                      title: Text("Alart!"),
                                      content: Text("Do you want to Delete? "),
                                      actions: [
                                        TextButton(onPressed: (){
                                          int amount = totalGlassOfWater[index].TotalNoOfGlass;
                                          setState(() {
                                            DeleteItem(index);
                                            Navigator.of(context).pop();
                                            totalAmount -= amount;
                                          });

                                        }, child: Text("Agree")),
                                        TextButton(onPressed: (){
                                          Navigator.of(context).pop();
                                        }, child: Text("Cancel"))
                                      ],
                                    )
                                );
                              }
                          );
                        },
                        leading: CircleAvatar(
                          child: Text("${index+1}"),
                        ),
                        title: Text(DateFormat("h:mm:ss a dd:mm:yyyy").format(totalGlassOfWater[index].time)),
                        trailing: Text("${totalGlassOfWater[index].TotalNoOfGlass}"),
                      ),
                    );



                    }
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

class WaterTrack {
  final DateTime time;
   int TotalNoOfGlass;

  WaterTrack(this.time, this.TotalNoOfGlass);


}

