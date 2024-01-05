import 'package:cruv_seat_selector/pages/bookedseats.dart';
import 'package:cruv_seat_selector/pages/seatArrangement.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this keeps track of the current page
  int _selectedPage = 0;

  //methode to update selected page
  void _navigateButtomBar(int page) {
    setState(() {
      _selectedPage = page;
    });
  }

  final List _pages = [
    //Home Page
    SeatArrangement(),

    //Booked Seats Page
    BookedSeats(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 149, 210, 253),
        title: const Text(
          'Seat Selector',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: _navigateButtomBar,
        backgroundColor: const Color.fromARGB(255, 149, 210, 253),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: 'Booked Seats',
          ),
        ],
      ),
    );
  }
}
