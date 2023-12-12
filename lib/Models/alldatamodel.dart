class Detailsdatamodel {
  Detailsdatamodel({
      this.updated, 
      this.cases, 
      this.todayCases, 
      this.deaths, 
      this.todayDeaths, 
      this.recovered, 
      this.todayRecovered, 
      this.active, 
      this.critical, 
      this.casesPerOneMillion, 
      this.deathsPerOneMillion, 
      this.tests, 
      this.testsPerOneMillion, 
      this.population, 
      this.oneCasePerPeople, 
      this.oneDeathPerPeople, 
      this.oneTestPerPeople, 
      this.activePerOneMillion, 
      this.recoveredPerOneMillion, 
      this.criticalPerOneMillion, 
      this.affectedCountries,});

  Detailsdatamodel.fromJson(dynamic json) {
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'];
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = json['activePerOneMillion'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    affectedCountries = json['affectedCountries'];
  }
  num? updated;
  num? cases;
  num? todayCases;
  num? deaths;
  num? todayDeaths;
  num? recovered;
  num? todayRecovered;
  num? active;
  num? critical;
  num? casesPerOneMillion;
  num? deathsPerOneMillion;
  num? tests;
  num? testsPerOneMillion;
  num? population;
  num? oneCasePerPeople;
  num? oneDeathPerPeople;
  num? oneTestPerPeople;
  num? activePerOneMillion;
  num? recoveredPerOneMillion;
  num? criticalPerOneMillion;
  num? affectedCountries;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['updated'] = updated;
    map['cases'] = cases;
    map['todayCases'] = todayCases;
    map['deaths'] = deaths;
    map['todayDeaths'] = todayDeaths;
    map['recovered'] = recovered;
    map['todayRecovered'] = todayRecovered;
    map['active'] = active;
    map['critical'] = critical;
    map['casesPerOneMillion'] = casesPerOneMillion;
    map['deathsPerOneMillion'] = deathsPerOneMillion;
    map['tests'] = tests;
    map['testsPerOneMillion'] = testsPerOneMillion;
    map['population'] = population;
    map['oneCasePerPeople'] = oneCasePerPeople;
    map['oneDeathPerPeople'] = oneDeathPerPeople;
    map['oneTestPerPeople'] = oneTestPerPeople;
    map['activePerOneMillion'] = activePerOneMillion;
    map['recoveredPerOneMillion'] = recoveredPerOneMillion;
    map['criticalPerOneMillion'] = criticalPerOneMillion;
    map['affectedCountries'] = affectedCountries;
    return map;
  }

}