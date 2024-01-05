import 'package:flutter/material.dart';
import 'package:cruv_seat_selector/util/seat.dart';

class SeatRow extends StatelessWidget {
  final setrownumber;

  SeatRow({
    Key? key,
    required this.setrownumber,
  }) : super(key: key);

  List<String> seatnumarr = [''];

  void getseatnum(int setrownumber) {
    int start = (setrownumber - 1) * 8 + 1;
    int end = start + 7;

    for (int i = start; i <= end; i++) {
      seatnumarr.add(i.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
  getseatnum(setrownumber);
    return Column(
      children: [
        Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    width: 250,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Seat(
                        index: seatnumarr[1],
                        text: "Lower",
                      ),
                      Seat(
                        index: seatnumarr[2],
                        text: "Middle",
                      ),
                      Seat(
                        index: seatnumarr[3],
                        text: "Upper",
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    width: 90,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Seat(
                        index: seatnumarr[4],
                        text: "Side Lower",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    width: 250,
                    color: Colors.blue,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -15), // Move the widget up by 20 pixels
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Seat(
                            index: seatnumarr[5],
                            text: "Lower",
                          ),
                          Seat(
                            index: seatnumarr[6],
                            text: "Middle",
                          ),
                          Seat(
                            index: seatnumarr[7],
                            text: "Upper",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    width: 90,
                    color: Colors.blue,
                  ),
                ),
                Transform.translate(
                  offset: Offset(-7, -15), // Move the widget up by 20 pixels
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Seat(
                            index: seatnumarr[8],
                            text: "Side Upper",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
