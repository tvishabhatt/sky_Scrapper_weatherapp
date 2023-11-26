import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sky_pr5/HomePage.dart';
import 'package:sky_pr5/ThemeProvider.dart';
import 'package:sky_pr5/WeatherProvider.dart';


class CityPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CityPageState();
  }

}

class CityPageState extends State<CityPage>{


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Provider.of<WeatherProvider>(context, listen: false).mainuri();
  }

  @override
  Widget build(BuildContext context) {
    final themeprovider=Provider.of<ThemeProvider>(context, listen: false);
    // TODO: implement build
    return Scaffold(
      body: FutureBuilder<void>(
        future: Provider.of<WeatherProvider>(context,listen: false).mainuri(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          else{
            final weatherProvider=Provider.of<WeatherProvider>(context);
            return Stack(
              
              children: [
                Image(image: AssetImage(themeprovider.themeModal.isDark?"assets/night.png":"assets/after_noon.png"),height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),

                Center(
                  child: Positioned(
                    top: 300,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(child: Container()),
                                IconButton(onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
                                }, icon: Icon(Icons.list_alt,size: 45,color: Colors.white,)),
                              ],
                            ),
                           Text("${weatherProvider.signUpResponse.location.name}",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),

                            Row(
                              children: [
                                Text("${weatherProvider.signUpResponse.location.region} , ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                                Text("${weatherProvider.signUpResponse.location.country}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Center(child: Column(
                              children: [
                                Text("${weatherProvider.signUpResponse.current.tempC} °C ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                                Text("Last Updated : ${weatherProvider.signUpResponse.current.lastUpdated} min ago",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                                Text("weather : ${weatherProvider.signUpResponse.current.condition.text}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),]
                            )),
                            SizedBox(height: 60,),
                            Text("FroeCast",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                            SizedBox(height: 20,),
                            Center(
                              child: Table(
                                children: [
                                  TableRow(
                                      children: [
                                        Text("Day",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                        Text("Sunrise",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                        Text("SunSet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                        Text("Whether",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                                      ]
                                  ),
                                  TableRow(
                                    children:[
                                      Text(''),
                                      Text(''),
                                      Text(''),
                                      Text(''),
                                    ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text("Today"),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunrise}",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunset} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                        Text("${weatherProvider.signUpResponse.current.condition.text} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                      ]
                                  ),

                                  TableRow(
                                    children: [
                                      Text("Tomorrow"),
                                      Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunrise} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                      Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunset} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                      Text("${weatherProvider.signUpResponse.current.condition.text} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                    ]
                                  ),
                                  TableRow(
                                    children: [
                                      Text("mon"),
                                      Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunrise} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                      Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunset} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                      Text("${weatherProvider.signUpResponse.current.condition.text} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                    ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text("Tue"),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunrise} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunset} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                        Text("${weatherProvider.signUpResponse.current.condition.text} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                      ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text("wens"),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunrise} "),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunset} "),
                                        Text("${weatherProvider.signUpResponse.current.condition.text} "),
                                      ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text("Thr"),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunrise} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunset} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                        Text("${weatherProvider.signUpResponse.current.condition.text} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                      ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text("Fri"),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunrise}",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                        Text("${weatherProvider.signUpResponse.forecast.forecastday[0].astro.sunset} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                        Text("${weatherProvider.signUpResponse.current.condition.text} ",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16),),
                                      ]
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),

    );
  }

}