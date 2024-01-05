import 'package:cruv_seat_selector/database/BookedSeatsDB.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class BookedSeats extends StatefulWidget {
  const BookedSeats({Key? key}) : super(key: key);

  @override
  State<BookedSeats> createState() => _BookedSeatsState();
}

class _BookedSeatsState extends State<BookedSeats> {

  final _box = Hive.box('myBox');

  BookedSeatsDB db = BookedSeatsDB();


  List<dynamic> retrieveData() {
    db.loadData();
    return db.bookedSeats;
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> db = retrieveData();
    print(db);
    return Scaffold(
      body: ListView.builder(
        itemCount: db.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(db[index][0]+" "+db[index][1]),
            subtitle: Text(db[index][2]),
            trailing: Text(db[index][4]),
          );
        },
      ),
    );
  }
}
