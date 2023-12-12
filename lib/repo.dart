import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Models/allcountriesmodel.dart';
import 'Models/alldatamodel.dart';
import 'const.dart';
class AllRepo{

  Future<Detailsdatamodel> detailRepo() async {
    var response=await http.get(Uri.parse(Appurl.worldStatesApi));

if(response.statusCode==200){
   var data=jsonDecode(response.body);
   return Detailsdatamodel.fromJson(data);
}else{
   throw  Exception("Error");

}

  }


  Future<List<dynamic>> countryRepo() async {
     var data;
    var response=await http.get(Uri.parse(Appurl.countriesList));


    if(response.statusCode==200){
      data=jsonDecode(response.body);
      return data;
    }else{
      throw  Exception("Error");
    }

  }
}