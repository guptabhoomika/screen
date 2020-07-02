import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Part2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SfCartesianChart(
        margin: EdgeInsets.all(20),
        
  

        primaryXAxis: CategoryAxis(

          majorGridLines: MajorGridLines(
                              
                                color: Colors.white,
                                
                            ),
        
 
        ),
        primaryYAxis: NumericAxis(
          majorGridLines: MajorGridLines(
                                width: 1,
                                color: Colors.grey[400].withOpacity(0.50),
                                dashArray: <double>[10,10]
                            ),
        ),
        series: <ChartSeries>[
          ColumnSeries<Data,String>(
            dataSource: getData(),
            xValueMapper: (Data data,_)=>data.title,
            yValueMapper: (Data data,_)=>data.amt,
            color: Colors.grey[400].withOpacity(0.60),
            width: 0.35

             )
        ],

      )
      
    );
  }
}
class Data
{
  final String title;
  final double amt;
  Data(this.title,this.amt);

}

dynamic getData()
{
  List<Data> coldata = <Data>[
    Data("Progress",69.00),
    Data("Goal",276.00)
  ];
  return coldata;
  
}