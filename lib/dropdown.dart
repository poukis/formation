/*
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

void main() {
  runApp(  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DropdownButtonApp(),
  ));
}

class DropdownButtonApp extends StatefulWidget {

  DropdownButtonApp({super.key});

  @override
  State<DropdownButtonApp> createState() => _DropdownButtonAppState();
}

class _DropdownButtonAppState extends State<DropdownButtonApp> {
  final List<String> items = [
    'Mois',
    'Mois',
    'Mois',
    'Mois',
    'Mois',
    'Mois',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            hint: const Text(
              'Select Item',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            items: items
                .map((item) =>
                DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            buttonHeight: 40,
            buttonWidth: 140,
            itemHeight: 40,
          ),
        ),
      ),
    );
  }
}
*/

/*
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<BarChartModel> data = [
    BarChartModel(
      year: "2014",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    ),
    BarChartModel(
      year: "2015",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      year: "2016",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      year: "2017",
      financial: 450,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      year: "2018",
      financial: 630,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      year: "2019",
      financial: 950,
      color: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    BarChartModel(
      year: "2020",
      financial: 400,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bar Chart"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: charts.BarChart(
          series,
          animate: true,
        ),
      ),
    );
  }
}

class BarChartModel {
  String year;
  int financial;
  final charts.Color color;

  BarChartModel({
    required this.year,
    required this.financial,
    required this.color,
  });
}*/
