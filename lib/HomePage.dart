import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sky_pr5/CityPage.dart';
import 'package:sky_pr5/ThemeProvider.dart';


import 'package:textfield_search/textfield_search.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}
List<String> Citys = [
  'Mumbai',
  'Delhi',
  'Bangalore',
  'Hyderabad',
  'Ahmedabad',
  'Surat',
  'Vadodara',
  'Patan',
  'Chennai',
  'Kolkata',
  'Surat',
  'Pune',
  'Jaipur',
  'Lucknow',
  'Kanpur',
  'Nagpur',
  'Indore',
  'Thane',
  'Bhopal',
  'Visakhapatnam',
  'Pimpri-Chinchwad',
  'Patna',
  'Vadodara',
  'Ghaziabad',
  'Ludhiana',
  'Agra',
  'Nashik',
  'Faridabad',
  'Meerut',
  'Rajkot',
  'Kalyan-Dombivali',
  'Vasai-Virar',
  'Varanasi',
];
late String cityname;


class HomePageState extends State<HomePage>{


  static const label = "Select You City";
 TextEditingController myController=TextEditingController();

  late StreamSubscription Subscription;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Subscription=Connectivity().onConnectivityChanged.listen(_showConnectivitySnackBar);

  }

  void _showConnectivitySnackBar(ConnectivityResult result){
  final hasInternet=result !=ConnectivityResult.none;
  final message =hasInternet?result == ConnectivityResult.mobile?'You are Connected to mobile network':"You are  connected to wi-fi network":"You have no internet";
  final color= hasInternet ? Colors.green:Colors.red;
  _showSnackBar(context,message,color);

  }
  void _showSnackBar(BuildContext context,String? message,Color color){
  final snackBar=SnackBar(content:Text(message!),backgroundColor: color,);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

 @override
  Widget build(BuildContext context) {
    final themeprovider=Provider.of<ThemeProvider>(context, listen: false);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: themeprovider.themeModal.isDark?Colors.pink:Colors.purple,
        title: Text(" Select your City"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).changeTheme();
            },
            icon: (Provider.of<ThemeProvider>(context).themeModal.isDark)
                ? const Icon(Icons.mode_night)
                : const Icon(Icons.light_mode_rounded),
          ),
        ],
      ),
      body:Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFieldSearch(label: label,
                controller: myController,
                initialList: Citys,
              itemsInView: 10,

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(onPressed: ()async {
              cityname=myController.text.toString();
              print(myController.text);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CityPage(),));
            }, child: Text("Done")),
          ),

     ] )
    );
  }

}