import 'package:sky_pr5/Current.dart';

class Forecast {
  List<Forecastday> forecastday=[];

  Forecast({required this.forecastday});

  Forecast.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      forecastday = <Forecastday>[];
      json['forecastday'].forEach((v) {
        forecastday!.add(new Forecastday.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.forecastday != null) {
      data['forecastday'] = this.forecastday!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Forecastday {
  String date="";
  int dateEpoch=0;
  Day day=Day(maxtempC: 0.0, maxtempF:0.0, mintempC:0.0, mintempF:0.0, avgtempC: 0.0, avgtempF:0.0, maxwindMph:0.0, maxwindKph:0.0, totalprecipMm:0.0, totalprecipIn:0.0, totalsnowCm:0.0, avgvisKm:0.0, avgvisMiles:0.0, avghumidity: 0.0, dailyWillItRain: 0, dailyChanceOfRain: 0, dailyWillItSnow: 0, dailyChanceOfSnow: 0, condition: Condition(text: '', icon: '', code: 0), uv:0.0);
  Astro astro=Astro(sunrise: '', sunset: '', moonrise: '', moonset: '', moonPhase: "", moonIllumination: 0, isMoonUp: 0, isSunUp: 0);
  List<Hour> hour=[];

  Forecastday({required this.date,required this.dateEpoch,required this.day,required this.astro,required this.hour});

   Forecastday.fromJson(Map<String, dynamic> json) {
         date=json['date']??"";
        dateEpoch=json['dateEpoch']??0;
        day=Day.fromJson(json['day']??{});
        astro=Astro.fromJson(json['astro']??{});
        if(json['hour']!=null){
          hour = <Hour>[];
          json['hour'].forEach((v) {
            hour.add(new Hour.fromJson(v));
          });
    }
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['date_epoch'] = this.dateEpoch;
    data['astro'] = this.astro;
    data['hour'] = this.hour!.map((v) => v.toJson()).toList();
    return data;
  }
}

class Day {
  double maxtempC=0.0;
  double maxtempF=0.0;
  double mintempC=0.0;
  double mintempF=0.0;
  double avgtempC=0.0;
  double avgtempF=0.0;
  double maxwindMph=0.0;
  double maxwindKph=0.0;
  double totalprecipMm=0.0;
  double totalprecipIn=0.0;
  double totalsnowCm=0.0;
  double avgvisKm=0.0;
  double avgvisMiles=0.0;
  double avghumidity=0.0;
  int dailyWillItRain=0;
  int dailyChanceOfRain=0;
  int dailyWillItSnow=0;
  int dailyChanceOfSnow=0;
  Condition condition=Condition(text: "", icon: "", code: 0);
  double uv=0;

  Day(
      {required this.maxtempC, required this.maxtempF, required  this.mintempC, required this.mintempF, required this.avgtempC, required this.avgtempF, required this.maxwindMph, required  this.maxwindKph,
        required  this.totalprecipMm,required this.totalprecipIn,required this.totalsnowCm,required this.avgvisKm,required this.avgvisMiles, required this.avghumidity,required this.dailyWillItRain,
        required this.dailyChanceOfRain,required this.dailyWillItSnow,required this.dailyChanceOfSnow,required this.condition,required this.uv});

   Day.fromJson(Map<String, dynamic> json) {
     maxtempC=json['maxtempC']??0.0;
         maxtempF= json['maxtempF']??0.0;
         mintempC=json['mintempC']??0.0;
         mintempF= json['mintempF']??0.0;
         avgtempC= json['avgtempC']??0.0;
         avgtempF= json['avgtempF']??0.0;
         maxwindMph= json['maxwindMph']??0.0;
         maxwindKph= json['maxwindKph']??0.0;
         totalprecipMm= json['totalprecipMm']??0.0;
         totalprecipIn= json['totalprecipIn']??0.0;
         totalsnowCm=json['totalsnowCm']??0.0;
         avgvisKm= json['avgvisKm']??0.0;
         avgvisMiles= json['avgvisMiles']??0.0;
         avghumidity= json['avghumidity']??0.0;
         dailyWillItRain= json['dailyWillItRain']??0;
         dailyChanceOfRain= json['dailyChanceOfRain']??0;
         dailyWillItSnow=json['dailyWillItSnow']??0;
         dailyChanceOfSnow= json['dailyChanceOfSnow']??0;
         condition=new Condition.fromJson(json['condition']??{});
         uv=json['uv']??0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['maxtemp_c'] = this.maxtempC;
    data['maxtemp_f'] = this.maxtempF;
    data['mintemp_c'] = this.mintempC;
    data['mintemp_f'] = this.mintempF;
    data['avgtemp_c'] = this.avgtempC;
    data['avgtemp_f'] = this.avgtempF;
    data['maxwind_mph'] = this.maxwindMph;
    data['maxwind_kph'] = this.maxwindKph;
    data['totalprecip_mm'] = this.totalprecipMm;
    data['totalprecip_in'] = this.totalprecipIn;
    data['totalsnow_cm'] = this.totalsnowCm;
    data['avgvis_km'] = this.avgvisKm;
    data['avgvis_miles'] = this.avgvisMiles;
    data['avghumidity'] = this.avghumidity;
    data['daily_will_it_rain'] = this.dailyWillItRain;
    data['daily_chance_of_rain'] = this.dailyChanceOfRain;
    data['daily_will_it_snow'] = this.dailyWillItSnow;
    data['daily_chance_of_snow'] = this.dailyChanceOfSnow;
    data['condition'] = this.condition;
    data['uv'] = this.uv;
    return data;
  }
}

class Astro {
  String sunrise='';
  String sunset='';
  String moonrise='';
  String moonset='';
  String moonPhase='';
  int moonIllumination=0;
  int isMoonUp=0;
  int isSunUp=0;

  Astro({required this.sunrise,required this.sunset,required this.moonrise,required this.moonset,required this.moonPhase,required this.moonIllumination,required this.isMoonUp,required this.isSunUp});

 Astro.fromJson(Map<String, dynamic> json) {
      sunrise=json['sunrise']??"";
      sunset= json['sunset']??"";
      moonrise= json['moonrise']??"";
      moonset= json['moonset']??'';
      moonPhase=json['moonPhase']??"";
      moonIllumination=json['moonIllumination']??0;
      isMoonUp= json['isMoonUp']??0;
      isSunUp=json['isSunUp']??0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['moonrise'] = this.moonrise;
    data['moonset'] = this.moonset;
    data['moon_phase'] = this.moonPhase;
    data['moon_illumination'] = this.moonIllumination;
    data['is_moon_up'] = this.isMoonUp;
    data['is_sun_up'] = this.isSunUp;
    return data;
  }
}

class Hour {
  int timeEpoch=0;
  String time='';
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
  double precipMm=0;
  double precipIn=0;
  int humidity=0;
  int cloud=0;
  double feelslikeC=0.0;
  double feelslikeF=0.0;
  double windchillC=0.0;
  double windchillF=0.0;
  double heatindexC=0.0;
  double heatindexF=0.0;
  double dewpointC=0.0;
  double dewpointF=0.0;
  int willItRain=0;
  int chanceOfRain=0;
  int willItSnow=0;
  int chanceOfSnow=0;
  double visKm=0.0;
  double visMiles=0.0;
  double gustMph=0.0;
  double gustKph=0.0;
  double uv=0.0;

  Hour({required this.timeEpoch,required  this.time,required this.tempC,required this.tempF,required this.isDay,required this.condition,required this.windMph,
        required this.windKph,required this.windDegree,required this.windDir,required this.pressureMb,required this.pressureIn,required this.precipMm,required this.precipIn,
        required this.humidity,required this.cloud,required this.feelslikeC,required this.feelslikeF,required this.windchillC,required this.windchillF,required this.heatindexC,required this.heatindexF,
        required this.dewpointC,required this.dewpointF,required this.willItRain,required this.chanceOfRain,required this.willItSnow,required this.chanceOfSnow,required this.visKm,
      required  this.visMiles, required this.gustMph,required this.gustKph, required this.uv});

  Hour.fromJson(Map<String, dynamic> json) {
   timeEpoch= json['timeEpoch']??0;
       time=json['time']??"";
       tempC= json['tempC']??0.0;
       tempF= json['tempF']??0.0;
       isDay=(json['isDay']??0).toInt();
       condition=new Condition.fromJson(json['condition']??{});
       windMph= json['windMph']??0.0;
       windKph=json['windKph']??0.0;
       windDegree=json['windDegree']??0;
       windDir= json['windDir']??"";
       pressureMb=json['pressureMb']??0.0;
       pressureIn= json['pressureIn']??0.0;
       precipMm= json['precipMm']??0.0;
       precipIn=json['precipIn']??0.0;
       humidity= json['humidity']??0;
       cloud= json['cloud']??0;
       feelslikeC= json['feelslikeC']??0.0;
       feelslikeF= json['feelslikeF']??0.0;
       windchillC= json['windchillC']??0.0;
       windchillF= json['windchillF']??0.0;
       heatindexC= json['heatindexC']??0.0;
       heatindexF= json['heatindexF']??0.0;
       dewpointC=json['dewpointC']??0.0;
       dewpointF=json['dewpointF']??0.0;
       willItRain=json['willItRain']??0;
       chanceOfRain= json['chanceOfRain']??0;
       willItSnow= json['willItSnow']??0;
       chanceOfSnow=json['chanceOfSnow']??0;
       visKm= json['visKm']??0.0;
       visMiles= json['visMiles']??0.0;
       gustMph= json['gustMph']??0.0;
       gustKph=json['gustKph']??0.0;
       uv= json['uv']??0.0;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time_epoch'] = this.timeEpoch;
    data['time'] = this.time;
    data['temp_c'] = this.tempC;
    data['temp_f'] = this.tempF;
    data['is_day'] = this.isDay;
    data['condition'] = this.condition;
    data['wind_mph'] = this.windMph;
    data['wind_kph'] = this.windKph;
    data['wind_degree'] = this.windDegree;
    data['wind_dir'] = this.windDir;
    data['pressure_mb'] = this.pressureMb;
    data['pressure_in'] = this.pressureIn;
    data['precip_mm'] = this.precipMm;
    data['precip_in'] = this.precipIn;
    data['humidity'] = this.humidity;
    data['cloud'] = this.cloud;
    data['feelslike_c'] = this.feelslikeC;
    data['feelslike_f'] = this.feelslikeF;
    data['windchill_c'] = this.windchillC;
    data['windchill_f'] = this.windchillF;
    data['heatindex_c'] = this.heatindexC;
    data['heatindex_f'] = this.heatindexF;
    data['dewpoint_c'] = this.dewpointC;
    data['dewpoint_f'] = this.dewpointF;
    data['will_it_rain'] = this.willItRain;
    data['chance_of_rain'] = this.chanceOfRain;
    data['will_it_snow'] = this.willItSnow;
    data['chance_of_snow'] = this.chanceOfSnow;
    data['vis_km'] = this.visKm;
    data['vis_miles'] = this.visMiles;
    data['gust_mph'] = this.gustMph;
    data['gust_kph'] = this.gustKph;
    data['uv'] = this.uv;
    return data;
  }
}