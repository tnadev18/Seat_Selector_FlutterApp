import 'package:hive_flutter/hive_flutter.dart';


class BookedSeatsDB{
  List bookedSeats = [];  


  // reference the box 
 final _box = Hive.box('myBox');


 //load the data from the DB
 void loadData() {
   bookedSeats = _box.get('BookedSeats') ?? [];
 }

 //save the data to the DB
 void updateDataBase(){
 _box.put('BookedSeats', bookedSeats);
 }
}