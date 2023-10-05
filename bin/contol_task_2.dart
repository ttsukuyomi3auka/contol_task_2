import 'dart:math';

import 'package:contol_task_2/contol_task_2.dart' as contol_task_2;
import 'package:dio/dio.dart';

import 'models/getCar/getCar.dart';

void main(List<String> arguments) async {
  Dio httpClient =Dio();
  String url ='https://myfakeapi.com/api/cars/';
  var response = await httpClient.get(url);
  GetCar getCar =GetCar.fromJson(response.data);
  List<dynamic> allCars=[];
  allCars.addAll(getCar.cars);
  double minPrice=5000;
  int idMin=0;
  for (var el in allCars) {
    String subStr=el.price;
    subStr = subStr.substring(1,8);
    double curPrice= double.parse(subStr);
    if (curPrice<minPrice){
      minPrice=curPrice;
      idMin=el.id;
    }
  }
  print(idMin);
  
}
