// class Allcountriesmodel {
//   Allcountriesmodel({
//       this.updated,
//       this.country,
//       this.countryInfo,
//       this.cases,
//       this.todayCases,
//       this.deaths,
//       this.todayDeaths,
//       this.recovered,
//       this.todayRecovered,
//       this.active,
//       this.critical,
//       this.casesPerOneMillion,
//       this.deathsPerOneMillion,
//       this.tests,
//       this.testsPerOneMillion,
//       this.population,
//       this.continent,
//       this.oneCasePerPeople,
//       this.oneDeathPerPeople,
//       this.oneTestPerPeople,
//       this.activePerOneMillion,
//       this.recoveredPerOneMillion,
//       this.criticalPerOneMillion,});
//
//   Allcountriesmodel.fromJson(dynamic json) {
//     updated = json['updated'];
//     country = json['country'];
//     countryInfo = json['countryInfo'] != null ? CountryInfo.fromJson(json['countryInfo']) : null;
//     cases = json['cases'];
//     todayCases = json['todayCases'];
//     deaths = json['deaths'];
//     todayDeaths = json['todayDeaths'];
//     recovered = json['recovered'];
//     todayRecovered = json['todayRecovered'];
//     active = json['active'];
//     critical = json['critical'];
//     casesPerOneMillion = json['casesPerOneMillion'];
//     deathsPerOneMillion = json['deathsPerOneMillion'];
//     tests = json['tests'];
//     testsPerOneMillion = json['testsPerOneMillion'];
//     population = json['population'];
//     continent = json['continent'];
//     oneCasePerPeople = json['oneCasePerPeople'];
//     oneDeathPerPeople = json['oneDeathPerPeople'];
//     oneTestPerPeople = json['oneTestPerPeople'];
//     activePerOneMillion = json['activePerOneMillion'];
//     recoveredPerOneMillion = json['recoveredPerOneMillion'];
//     criticalPerOneMillion = json['criticalPerOneMillion'];
//   }
//   num? updated;
//   String? country;
//   CountryInfo? countryInfo;
//   num? cases;
//   num? todayCases;
//   num? deaths;
//   num? todayDeaths;
//   num? recovered;
//   num? todayRecovered;
//   num? active;
//   num? critical;
//   num? casesPerOneMillion;
//   num? deathsPerOneMillion;
//   num? tests;
//   num? testsPerOneMillion;
//   num? population;
//   String? continent;
//   num? oneCasePerPeople;
//   num? oneDeathPerPeople;
//   num? oneTestPerPeople;
//   num? activePerOneMillion;
//   num? recoveredPerOneMillion;
//   num? criticalPerOneMillion;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['updated'] = updated;
//     map['country'] = country;
//     if (countryInfo != null) {
//       map['countryInfo'] = countryInfo?.toJson();
//     }
//     map['cases'] = cases;
//     map['todayCases'] = todayCases;
//     map['deaths'] = deaths;
//     map['todayDeaths'] = todayDeaths;
//     map['recovered'] = recovered;
//     map['todayRecovered'] = todayRecovered;
//     map['active'] = active;
//     map['critical'] = critical;
//     map['casesPerOneMillion'] = casesPerOneMillion;
//     map['deathsPerOneMillion'] = deathsPerOneMillion;
//     map['tests'] = tests;
//     map['testsPerOneMillion'] = testsPerOneMillion;
//     map['population'] = population;
//     map['continent'] = continent;
//     map['oneCasePerPeople'] = oneCasePerPeople;
//     map['oneDeathPerPeople'] = oneDeathPerPeople;
//     map['oneTestPerPeople'] = oneTestPerPeople;
//     map['activePerOneMillion'] = activePerOneMillion;
//     map['recoveredPerOneMillion'] = recoveredPerOneMillion;
//     map['criticalPerOneMillion'] = criticalPerOneMillion;
//     return map;
//   }
//
// }
//
// class CountryInfo {
//   CountryInfo({
//       this.id,
//       this.iso2,
//       this.iso3,
//       this.lat,
//       this.long,
//       this.flag,});
//
//   CountryInfo.fromJson(dynamic json) {
//     id = json['_id'];
//     iso2 = json['iso2'];
//     iso3 = json['iso3'];
//     lat = json['lat'];
//     long = json['long'];
//     flag = json['flag'];
//   }
//   num? id;
//   String? iso2;
//   String? iso3;
//   num? lat;
//   num? long;
//   String? flag;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['_id'] = id;
//     map['iso2'] = iso2;
//     map['iso3'] = iso3;
//     map['lat'] = lat;
//     map['long'] = long;
//     map['flag'] = flag;
//     return map;
//   }
//
// }