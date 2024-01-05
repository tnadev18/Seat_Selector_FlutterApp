import 'package:cruv_seat_selector/database/BookedSeatsDB.dart';
import 'package:cruv_seat_selector/pages/InformationBox.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Seat extends StatefulWidget {
  final double size;
  final String text;
  final String index;

  Seat({
    Key? key,
    this.size = 70.0,
    required this.text,
    required this.index,
  }) : super(key: key);

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  //reference the box
  final _box = Hive.box('myBox');

  //BookedSeats List
  BookedSeatsDB db = BookedSeatsDB();

  @override
  void initState() {
    // TODO: implement initState
    // if this is first time erver opining the app then create default data
    if (_box.isEmpty) {
      db.updateDataBase();
    } else {
      db.loadData();
    }

    super.initState();
  }

  final _firstNameTextconroller = TextEditingController();
  final _lastNameTextconroller = TextEditingController();
  final _emailTextconroller = TextEditingController();
  final _phoneTextconroller = TextEditingController();

  void getuserinfo() {
    showDialog(
        context: context,
        builder: (context) {
          return InfoBox(
            firstNameTextconroller: _firstNameTextconroller,
            lastNameTextconroller: _lastNameTextconroller,
            emailTextconroller: _emailTextconroller,
            phoneTextconroller: _phoneTextconroller,
            onSave: () {
              setState(() {
                db.bookedSeats.add([
                  _firstNameTextconroller.text,
                  _lastNameTextconroller.text,
                  _emailTextconroller.text,
                  _phoneTextconroller.text,
                  widget.index
                ]);

                // Save the seat data to the Hive box
              });
              Navigator.pop(context);
            },
            // onCancel: onCancel(){},
          );
        });
    db.updateDataBase();
  }

  List<dynamic> retrieveData() {
    db.loadData();
    return db.bookedSeats;
  }

  bool isIndexBooked() {
    for (var array in db.bookedSeats) {
      print(array[4]);
      if (array[4] == widget.index) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> db = retrieveData();
    print(db);
    return GestureDetector(
      onTap: () {
        getuserinfo();
      },
      child: Container(
        height: 70,
        width: widget.size,
        decoration: BoxDecoration(
          color: isIndexBooked() ? Color(0xFFFF0000) : Color(0xFF87D1F3),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                widget.index,
                style: TextStyle(
                  color: const Color.fromARGB(255, 4, 88, 157),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
