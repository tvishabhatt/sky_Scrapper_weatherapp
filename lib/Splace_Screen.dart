import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sky_pr5/HomePage.dart';
import 'package:sky_pr5/ThemeProvider.dart';

class SplaceScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplaceScreenState();
  }

}
class SplaceScreenState extends State<SplaceScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),() =>
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),)),);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final themeprovider=Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      backgroundColor:themeprovider.themeModal.isDark?
      Color(0xff293b47):
      Color(0xff3081cd),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(image: AssetImage('assets/weather-splace-Screen.png'),height: 200,width: 200,),
            ),
            Text("Weathe app ",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

}