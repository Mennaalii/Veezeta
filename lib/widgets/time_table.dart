import 'package:flutter/material.dart';
import 'package:vezeeta/screens/confirmation.dart';

class TimeTable extends StatelessWidget {
  final id;
  final day;
  final date;
  final startDate;
  final endDate;
  final isDr;
  TimeTable(
      {this.id, this.date, this.day, this.endDate, this.startDate, this.isDr});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
                width: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        color: Colors.grey.shade300,
                        child: Column(children: [
                          Text(day.toString()),
                          Text(date.toString())
                        ])),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(children: [
                          Text(startDate.toString()),
                          SizedBox(
                            height: 5,
                          ),
                          Text(endDate.toString())
                        ])),
                    RaisedButton(
                      elevation: 0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => Confirmation(
                                id: id,
                                isDr: isDr,
                                startDate: startDate,
                                endDate: endDate,
                                theDay: day.toString(),
                                theDate: date.toString())));
                      },
                      child: Text('Reserve'),
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ))));
  }
}
