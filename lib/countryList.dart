import 'package:covid_tracker_project_api/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';

import 'details_screen.dart';
class CountryList extends StatefulWidget {
  const CountryList({super.key});

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> with TickerProviderStateMixin{

  TextEditingController _textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    AllRepo _allrepo=AllRepo();
    return Scaffold(
appBar: AppBar(
backgroundColor: Theme.of(context).scaffoldBackgroundColor,
),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {

                  });
                },
                controller: _textEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),

                hintText: "Search With Country Name",
                  labelText: "Country",
                 prefixIcon: Icon(Icons.flag_circle,color: Colors.white) ,
                ),

              ),
            ),
            SizedBox(height: 20,),
            FutureBuilder(future: _allrepo.countryRepo(),
              builder: (context,AsyncSnapshot <List<dynamic>>  snapshot) {
              if(snapshot.hasData){
                return ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    String name=snapshot.data?[index]["country"];
                    if(_textEditingController.text.isEmpty){
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Details_Screen(
                              name:  snapshot.data?[index]["country"],
                              image: '${snapshot.data?[index]["countryInfo"]["flag"]}',
                              total_cases: snapshot.data?[index]["cases"],
                              total_date: snapshot.data?[index]["deaths"],
                              test: snapshot.data?[index]["tests"],
                              todayrecovered: snapshot.data?[index]["todayRecovered"],
                              total_recover: snapshot.data?[index]["recovered"],
                              active: snapshot.data?[index]["active"],
                              critical: snapshot.data?[index]["critical"],

                            ),));

                          },
                          child: Card(
                            color: Colors.teal.shade50,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: ListTile(
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),

                                  child: Image(
                                      width: 70,
                                      height: 70,
                                      image: NetworkImage("${snapshot.data?[index]["countryInfo"]["flag"]}"),fit: BoxFit.fill),
                                ),

                                title: Text("${snapshot.data?[index]["country"]}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                subtitle: Text("${snapshot.data?[index]["cases"]}",style: TextStyle( color: Colors.black)),
                              ),
                            ),
                          ),
                        ),
                      );
                    }else if(name.toLowerCase().contains(_textEditingController.text.toLowerCase())){
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Details_Screen(
                              name:  snapshot.data?[index]["country"],
                              image: '${snapshot.data?[index]["countryInfo"]["flag"]}',
                              total_cases: snapshot.data?[index]["cases"],
                              total_date: snapshot.data?[index]["deaths"],
                              test: snapshot.data?[index]["tests"],
                              todayrecovered: snapshot.data?[index]["todayRecovered"],
                              total_recover: snapshot.data?[index]["recovered"],
                              active: snapshot.data?[index]["active"],
                              critical: snapshot.data?[index]["critical"],

                            ),));

                          },
                          child: Card(
                            color: Colors.teal.shade50,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: ListTile(
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),

                                  child: Image(
                                      width: 70,
                                      height: 70,
                                      image: NetworkImage("${snapshot.data?[index]["countryInfo"]["flag"]}"),fit: BoxFit.fill),
                                ),

                                title: Text("${snapshot.data?[index]["country"]}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                subtitle: Text("${snapshot.data?[index]["cases"]}",style: TextStyle( color: Colors.black)),
                              ),
                            ),
                          ),
                        ),
                      );
                    }else{
                      return Container();
                    }

                },

                );
              }else{
                return ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 21,
                  itemBuilder: (BuildContext context, int index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey.shade700,
                      highlightColor: Colors.grey.shade100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        child: ListTile(
                          leading: Container(
                              height: 50,width: 70,color: Colors.white
                          ),

                          title: Container(height: 15,width: 90,color: Colors.white) ,
                          subtitle: Container(height: 10,width: 90,color: Colors.white) ,
                         ),
                      ),
                    );

                  },

                );
              }
            },)
          ],
        ),
      ),
    );
  }
}
