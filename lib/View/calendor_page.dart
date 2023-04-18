import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class CalendorPage extends StatefulWidget {
  const CalendorPage({super.key});

  @override
  State<CalendorPage> createState() => _CalendorPageState();
}

class _CalendorPageState extends State<CalendorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          "Calendar",
          style: TextStyle(color: Colors.black54),
        )),
      ),
      body: PagedVerticalCalendar(
        minDate: DateTime.utc(2001),
        maxDate: DateTime.utc(2100),
        initialDate: DateTime.now(),
        startWeekWithSunday: true,
        onDayPressed: (day) {
          print(day);
        },
      ),
    );
  }
}
