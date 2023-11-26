import 'package:sky_pr5/Current.dart';
import 'package:sky_pr5/Forecast.dart';
import 'package:sky_pr5/Location.dart';

class SignUpResponse{
  Location location;
  Current current;
  Forecast forecast;
  SignUpResponse( {required this.location,required this.current,required this.forecast});



  factory SignUpResponse.fromJson(Map<String,dynamic> data){
    return SignUpResponse(
        location: Location.fromJson(data['location'] ?? {}),
        current: Current.fromJson(data['current'] ?? {}),
      forecast: Forecast.fromJson(data['forecast']??{}),
    );

  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    if(this.location !=null){
      data['location']=this.location.toJson();
    }
    if(this.current !=null){
      data['current']=this.current.toJson();
    }
    if (this.forecast != null) {
      data['forecast'] = this.forecast!.toJson();
    }
    return data;

  }

}