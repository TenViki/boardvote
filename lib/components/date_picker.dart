import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerInput extends StatefulWidget {
  final Function(DateTime) onDateTimeSelected;
  DateTime selectedDateTime;
  DateTimePickerInput(
      {super.key,
      required this.onDateTimeSelected,
      required this.selectedDateTime});

  @override
  State<DateTimePickerInput> createState() => _DateTimePickerInputState();
}

class _DateTimePickerInputState extends State<DateTimePickerInput> {
  String _selectedDate = "";
  String _selectedTime = "";

  void initState() {
    super.initState();
    setState(() {
      _selectedDate = DateFormat.yMMMd().format(widget.selectedDateTime);
      _selectedTime = DateFormat.Hm().format(widget.selectedDateTime);
    });
  }

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = DateFormat.yMMMd().format(picked);
        widget.onDateTimeSelected(picked);
      });
    }
  }

  void _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked.format(context);
        widget.onDateTimeSelected(DateTime(
            widget.selectedDateTime.year,
            widget.selectedDateTime.month,
            widget.selectedDateTime.day,
            picked.hour,
            picked.minute));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () => _selectDate(context),
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: "Date",
                border: OutlineInputBorder(),
              ),
              child: Text(_selectedDate),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: InkWell(
            onTap: () => _selectTime(context),
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: "Time",
                border: OutlineInputBorder(),
              ),
              child: Text(_selectedTime),
            ),
          ),
        ),
      ],
    );
  }
}
