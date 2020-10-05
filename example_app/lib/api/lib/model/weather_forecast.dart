part of openapi.api;

class WeatherForecast {
  
  DateTime date = null;
  
  int temperatureC = null;
  
  int temperatureF = null;
  
  String summary = null;

  WeatherForecast({
    this.date,
    this.temperatureC,
    this.temperatureF,
    this.summary,
  });

  @override
  String toString() {
    return 'WeatherForecast[date=$date, temperatureC=$temperatureC, temperatureF=$temperatureF, summary=$summary, ]';
  }

  WeatherForecast.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = (json['date'] == null) ?
      null :
      DateTime.parse(json['date']);
    temperatureC = json['temperatureC'];
    temperatureF = json['temperatureF'];
    summary = json['summary'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (date != null)
      json['date'] = date == null ? null : date.toUtc().toIso8601String();
    if (temperatureC != null)
      json['temperatureC'] = temperatureC;
    if (temperatureF != null)
      json['temperatureF'] = temperatureF;
      json['summary'] = summary;
    return json;
  }

  static List<WeatherForecast> listFromJson(List<dynamic> json) {
    return json == null ? List<WeatherForecast>() : json.map((value) => WeatherForecast.fromJson(value)).toList();
  }

  static Map<String, WeatherForecast> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WeatherForecast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WeatherForecast.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WeatherForecast-objects as value to a dart map
  static Map<String, List<WeatherForecast>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WeatherForecast>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WeatherForecast.listFromJson(value);
       });
     }
     return map;
  }
}

