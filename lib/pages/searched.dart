import 'package:flutter/material.dart';

class SearchedSeat extends StatelessWidget {
  const SearchedSeat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AlertDialog(
        title: Text('Seat'),
        content: Text('Your seat has been booked'),
        
      ),
    );
  }
}