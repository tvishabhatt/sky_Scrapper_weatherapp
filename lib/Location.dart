class Location{
  String name='';
  String region='';
  String country='';
  double lat=0.0;
  double lon=0.0;
  String tzId='';
  int localtimeEpoch=0;
  String localtime='';


  Location({required this.name,required this.region,required this.country,required this.lat,required this.lon,required this.tzId,required this.localtimeEpoch,required this.localtime});

  factory Location.fromJson(Map<String,dynamic> data){
    return Location(name: data['name']?? "",
        region: data['region']?? "",
        country: data['country']?? "",
        lat: data['lat']?? 0.0,
        lon: data['lon']?? 0.0,
        tzId: data['tzId']?? "",
        localtimeEpoch: data['localtimeEpoch']?? 0,
        localtime: data['localtime']?? "");
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    data['name']=this.name;
    data['region']=this.region;
    data['country']=this.country;
    data['lat']=this.lat;
    data['lon']=this.lon;
    data['tzId']=this.tzId;
    data['localtimeEpoch']=this.localtimeEpoch;
    data['localtime']=this.localtime;
    return data;
  }


}