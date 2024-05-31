import 'package:flutter/material.dart';

class HorizontalBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double total = 29800;
    double active = 24750;
    double onLeave = 2430;
    double inactive = 2620;

    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Bar Chart'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Student Body',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'TA 2023/2024',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(height: 20),
              Text(
                '29.800',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: (active / total * 100).round(),
                    child: Container(
                      height: 30,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: (onLeave / total * 100).round(),
                    child: Container(
                      height: 30,
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    flex: (inactive / total * 100).round(),
                    child: Container(
                      height: 30,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(width: 10, height: 10, color: Colors.blue),
                      SizedBox(width: 5),
                      Text('Aktif'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(width: 10, height: 10, color: Colors.yellow),
                      SizedBox(width: 5),
                      Text('Cuti'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(width: 10, height: 10, color: Colors.pink),
                      SizedBox(width: 5),
                      Text('Non aktif'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: HorizontalBarChart(),
    ));
