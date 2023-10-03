import 'package:http/http.dart';
import 'dart:convert';

class worker {


  //constructor
  late String location;

  worker({required this.location}){
    location = this.location;
  }

  late String temp;
  late String humidity;
  late String airSpeed;
  late String description;
  late String main;


  Future<void> getData() async{
    Response response = await get("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=69a65c622ca7786d00cbd6b56ac3fe6e" as Uri);
    Map data = jsonDecode(response.body);


    // Getting temp, humidity
    Map tempData = data["main"];
    String getHumidity = tempData["humidity"].toString();
    double getTemp = tempData["temp"];

    // Getting airSpeed
    Map wind = data["wind"];
    double getAirSpeed = wind["speed"];


    //Getting Description
    List weatherData = data["weather"];
    Map weatherMainData = weatherData[0];
    String getMain = weatherMainData["main"];
    String getDesc = weatherMainData["description"];

    //Assigning value
    temp = getTemp.toString();
    humidity = getHumidity;
    airSpeed = getAirSpeed.toString();
    description = getDesc.toString();
    main = getMain;


  }


}


