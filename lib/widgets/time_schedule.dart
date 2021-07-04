import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vezeeta/providers/doctors.dart';
import 'package:vezeeta/providers/all_offers.dart';
import 'time_table.dart';

class TimeSchedule extends StatelessWidget {
  final id;
  final isDr;
  List<Map<Object, Object>> drschedule = [];
  List<Map<Object, Object>> offerschedule = [];
  TimeSchedule(this.id, this.isDr);
  @override
  Widget build(BuildContext context) {
    if (isDr) {
      final doctor = Provider.of<Doctors>(context).searchByID(id);
      drschedule = doctor.schedule;
    } else {
      final offer = Provider.of<AllOffers>(context).searchByID(id);
      offerschedule = offer.schedule;
    }

    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Row(
                children: [
                  Icon(
                    Icons.lock_clock,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Reservation Schedule',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                width: 400,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: isDr
                        ? drschedule
                            .map((e) => TimeTable(
                                  id: id,
                                  date: e['date'],
                                  day: e['day'],
                                  endDate: e['endDate'],
                                  startDate: e['startDate'],
                                  isDr: isDr,
                                ))
                            .toList()
                        : offerschedule
                            .map((e) => TimeTable(
                                  id: id,
                                  date: e['date'],
                                  day: e['day'],
                                  endDate: e['endDate'],
                                  startDate: e['startDate'],
                                  isDr: isDr,
                                ))
                            .toList()),
              ),
            ])));
  }
}
