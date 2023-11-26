var time=DateTime.now().minute;
class Current{

  int lastUpdatedEpoch=0;
  String lastUpdated='$time';
  double tempC=0.0;
  double tempF=0.0;
  int isDay=0;
  Condition condition=Condition(text: '', icon: '', code: 0);
  double windMph=0.0;
  double windKph=0.0;
  int windDegree=0;
  String windDir='';
  double pressureMb=0.0;
  double pressureIn=0.0;
  double precipMm=0.0;
  double precipIn=0.0;
  int humidity=0;
  int cloud=0;
  double feelslikeC=0.0;
  double feelslikeF=0.0;
  double visKm=0;
  double visMiles=0;
  double uv=0;
  double gustMph=0.0;
  double gustKph=0.0;




  Current({required this.lastUpdatedEpoch,required this.lastUpdated,required this.tempC,required this.tempF,required this.isDay,required this.condition,
    required this.windMph,required this.windKph,required this.windDegree,required this.windDir,required this.pressureMb,required this.pressureIn,required this.precipMm,required this.precipIn,
    required this.humidity,required this.cloud,required this.feelslikeC,required this.feelslikeF,required this.visKm,required this.visMiles,required this.uv,required this.gustMph,required this.gustKph});


  factory Current.fromJson(Map<String,dynamic> data){
    return Current(lastUpdatedEpoch: data['lastUpdatedEpoch']??0,
        lastUpdated: data['lastUpdated']?? "$time",
        tempC: data['tempC']?? 28.0,
        tempF: data['tempF']?? 0.0,
        isDay: data['isDay']?? 0,
        condition: Condition.fromJson(data['condition'] ?? {}),
        windMph: data['windMph']?? 0.0,
        windKph: data['windKph']?? 0.0,
        windDegree: data['windDegree']?? 0,
        windDir: data['windDir']?? "",
        pressureMb:data['pressureMb']??0.0,
        pressureIn: data['pressureIn']?? 0.0,
        precipMm: data['precipMm']?? 0.0,
        precipIn: data['precipIn']?? 0.0,
        humidity: data['humidity']?? 0,
        cloud: data['cloud']?? 0,
        feelslikeC: data['feelslikeC']?? 0.0,
        feelslikeF: data['feelslikeF']?? 0.0,
        visKm: data['visKm']??0.0,
        visMiles:data['visMiles']??0.0,
        uv: data['uv']??0.0,
        gustMph: data['gustMph']??0.0,
        gustKph: data['gustKph']??0.0
    );

  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    data['lastUpdatedEpoch']=this.lastUpdatedEpoch;
    data['lastUpdated']=this.lastUpdated;
    data['tempC']=this.tempC;
    data['tempF']=this.tempF;
    data['isDay']=this.isDay;
    data['condition']=this.condition;
    data['windMph']=this.windMph;
    data['windKph']=this.windKph;
    data['windDegree']=this.windDegree;
    data['windDir']=this.windDir;
    data['pressureMb']=this.pressureMb;
    data['pressureIn']=this.pressureIn;
    data['precipMm']=this.precipMm;
    data['precipIn']=this.precipIn;
    data['humidity']=this.humidity;
    data['cloud']=this.cloud;
    data['feelslikeC']=this.feelslikeC;
    data['feelslikeF']=this.feelslikeF;
    data['visKm']=this.visKm;
    data['visMiles']=this.visMiles;
    data['uv']=this.uv;
    data['gustMph']=this.gustMph;
    data['gustKph']=this.gustKph;
    return data;


  }






}



class Condition{
  String text='';
  String icon='';
  int code=0;


  Condition({required this.text,required this.icon,required this.code});

  factory Condition.fromJson(Map<String,dynamic> data){
    return Condition(text: data['text']?? "",
        icon: data['icon']?? "",
        code: data['code']?? 0);
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    data['text']=this.text;
    data['icon']=this.icon;
    data['code']=this.code;
    return data;

  }
}