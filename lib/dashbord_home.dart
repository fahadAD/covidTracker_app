
import 'package:covid_tracker_project_api/repo.dart';
import 'package:covid_tracker_project_api/resublerow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

import 'countryList.dart';
class DashBordScreen extends StatefulWidget {
  const DashBordScreen({super.key});

  @override
  State<DashBordScreen> createState() => _DashBordScreenState();
}

class _DashBordScreenState extends State<DashBordScreen> with TickerProviderStateMixin{
  late final AnimationController _animationController=AnimationController(
      duration: Duration(seconds: 4),
      vsync: this)..repeat();
  final color_list=<Color>[
 Colors.blue,
 Colors.green,
 Colors.red,
];
  final color_list1=<Color>[
    Colors.yellowAccent,
    Colors.tealAccent,
    Colors.red,
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    AllRepo _allrepo=AllRepo();

    return SafeArea(
      child: FutureBuilder(
          future: _allrepo.detailRepo(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return Scaffold(
                bottomNavigationBar: Padding(
                  padding: const EdgeInsets.only(bottom: 40.0, right: 20.0,left: 20.0),
                  child: GestureDetector(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => CountryList(),));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          color: Color(0xff1aa260),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(child: Text("Track Countires",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                    ),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        PieChart(
                          dataMap:   {
                            "Total":double.parse(snapshot.data!.cases.toString()),
                            "Recovered":double.parse(snapshot.data!.recovered.toString()),
                            "Deaths":double.parse(snapshot.data!.deaths.toString()),
                          },
                          chartValuesOptions: ChartValuesOptions(
                            showChartValuesInPercentage: true
                          ),
                          animationDuration: Duration(seconds: 6),
                          legendOptions: LegendOptions(
                              legendPosition: LegendPosition.right
                          ),
                          chartType: ChartType.ring,
                          colorList: color_list1,
                          chartRadius: 100,
                        ),
                        PieChart(

                          dataMap:   {
                            "Total":double.parse(snapshot.data!.cases.toString()),
                            "Recovered":double.parse(snapshot.data!.recovered.toString()),
                            "Deaths":double.parse(snapshot.data!.deaths.toString()),
                          },
                          animationDuration: Duration(seconds: 2),
                          legendOptions: LegendOptions(
                              legendPosition: LegendPosition.left
                          ),
                          chartType: ChartType.disc,
                          colorList: color_list,
                        ),
                        SizedBox(height: 50,),
                        Card(

                          child: Column(
                            children: [
                              Reasuable_Widgets(tittle: "Total", value: "${snapshot.data?.cases}"),
                              Reasuable_Widgets(tittle: "Total Per 1 Million", value: "${snapshot.data?.casesPerOneMillion}"),
                              Reasuable_Widgets(tittle: "Recovered", value: "${snapshot.data?.recovered}"),
                              Reasuable_Widgets(tittle: "Recovered Per 1 Million", value: "${snapshot.data?.recoveredPerOneMillion}"),
                              Reasuable_Widgets(tittle: "Deaths", value: "${snapshot.data?.deaths}"),
                              Reasuable_Widgets(tittle: "Deaths Per 1 Million", value: "${snapshot.data?.deathsPerOneMillion}"),
                              Reasuable_Widgets(tittle: "Affected Countries", value: "${snapshot.data?.affectedCountries}"),
                              Reasuable_Widgets(tittle: "Critical", value: "${snapshot.data?.critical}"),
                              Reasuable_Widgets(tittle: "Critical Per 1 Million", value: "${snapshot.data?.criticalPerOneMillion}"),
                              Reasuable_Widgets(tittle: "Tests", value: "${snapshot.data?.tests}"),
                              Reasuable_Widgets(tittle: "Tests Per OneMillion", value: "${snapshot.data?.testsPerOneMillion}"),
                              Reasuable_Widgets(tittle: "Active", value: "${snapshot.data?.active}"),
                              Reasuable_Widgets(tittle: "Active Per 1 Million", value: "${snapshot.data?.activePerOneMillion}"),
                              Reasuable_Widgets(tittle: "To Day Effected", value: "${snapshot.data?.todayCases}"),
                              Reasuable_Widgets(tittle: "To Day Recovered", value: "${snapshot.data?.todayRecovered}"),
                              Reasuable_Widgets(tittle: "To Day Deaths", value: "${snapshot.data?.todayDeaths}"),
                              Reasuable_Widgets(tittle: "Updated", value: "${snapshot.data?.updated}"),

                            ],
                          ),
                        ),
                        SizedBox(height:MediaQuery.of(context).size.width*0.1,),


                      ],
                    ),
                  ),
                ),

              );
            }else{
              return Center(
          child: SpinKitWaveSpinner(
              color: Colors.white,
          controller: _animationController,
            trackColor: Colors.greenAccent,
            size: 100,
            waveColor: Colors.yellowAccent,
          ),
        );
            }
          },),
    );
  }
}
