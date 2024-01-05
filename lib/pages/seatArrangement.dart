import 'package:cruv_seat_selector/util/seat_row.dart';
import 'package:cruv_seat_selector/util/seat.dart';
import 'package:flutter/material.dart';

class SeatArrangement extends StatefulWidget {
  const SeatArrangement({super.key});

  @override
  State<SeatArrangement> createState() => _SeatArrangementState();
}

class _SeatArrangementState extends State<SeatArrangement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SeatRow(setrownumber: 1,),
          SeatRow(setrownumber: 2,),
          SeatRow(setrownumber: 3,),
          SeatRow(setrownumber: 4,),
          SeatRow(setrownumber: 5,),
        ],
      ),
    );
  }
}
