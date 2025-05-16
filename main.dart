import 'package:currency_converter/currency_convertor_materialpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  //text ia class and it will print statments in app
}
//types of widgets
//1.state less widget(data is imuttable is's means data can't be change)
//2.statefulwidget(data can be change line in defaulf we are increasing the numbers)

//when we are using abstrack class we wanted key form main class(parentclass)
//super is used to call a super class constructor

//two types of design
//1.material design
//2.cupertino design
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //scaffold is used to add header .body and all
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConvertorMaterialpage());
  }
}
