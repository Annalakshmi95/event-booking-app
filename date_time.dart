import 'dart:ffi';
import 'package:event_bookingapp_1/bottomnavigationbar.dart';
import 'package:event_bookingapp_1/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class DateandTime extends StatefulWidget {
  const DateandTime({super.key});

  @override
  State<DateandTime> createState() => _DateandTimeState();
}

class _DateandTimeState extends State<DateandTime> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  String get getDate {
    return DateFormat('dd-MMM-yyyy').format(_selectedDate);
  }

  String get getTime {
    final now = DateTime.now();
    final dateTime = DateTime(
        now.year, now.month, now.day, _selectedTime.hour, _selectedTime.minute);
    return DateFormat('hh:mm a').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('date and time'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                ElevatedButton(onPressed: () => openDatePicker(),
                 child: const Text("select Date -"),
                 ),
                 const SizedBox(width: 20),
                 Text("selected Date - $getDate"),
              ],
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () => openTimePicker(),
                 child: const Text("select Time - "),
                 ),
                 const SizedBox(width: 20),
                 Text("selected Time - $getTime"),
              
                        
                 
                 
              ],
            ),
            Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(
        onPressed: (() {Navigator.push(context,MaterialPageRoute
        (builder: (context) =>BottomnavigationbarPage() ));
        }), child: Text("ok",textAlign: TextAlign.center,)),
                )
                        
          ],
        ),
      ),
    );
  }

  Future<void> openDatePicker() async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(2005, 4, 1),
        lastDate: DateTime(2023, 12, 1));
    if (selectedDate != null) {
      setState(() {
        _selectedDate = selectedDate;
      });
    }
  }

  Future<void> openTimePicker() async {
    final selectedTime =
        await showTimePicker(context: context, initialTime: _selectedTime);
    if (selectedTime != null) {
      setState(() {
        _selectedTime = selectedTime;
      });
    }
  }
}

