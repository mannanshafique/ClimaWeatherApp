import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

//const apiKey = '13885506e8777ae6af65fd2229dc9e53';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
 

  @override
  void initState() {
    super.initState();
    geoPostionData();
  }

  void geoPostionData() async {
  
  var weatherData = await WeatherModel().getweatherData();
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LocationScreen(weatherData);
      }));
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitCircle(
            color: Colors.white,
            size: 80.0,
          )
          ),
    );
  }
}
