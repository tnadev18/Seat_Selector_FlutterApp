import 'package:flutter/material.dart';
import 'package:cruv_seat_selector/util/mybutton.dart';

class InfoBox extends StatelessWidget {
  final firstNameTextconroller;
  final lastNameTextconroller;
  final emailTextconroller;
  final phoneTextconroller;
  VoidCallback onSave;
  // VoidCallback onCancel;

  InfoBox({
    super.key,
    required this.firstNameTextconroller,
    required this.lastNameTextconroller,
    required this.emailTextconroller,
    required this.phoneTextconroller,
    required this.onSave,
    // required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Enter your details",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Get user Input
            TextField(
              controller: firstNameTextconroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
                hintText: 'Enter your First Name',
              ),
            ),
            TextField(
              controller: lastNameTextconroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
                hintText: 'Enter your Last Name',
              ),
            ),
            TextField(
              controller: emailTextconroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter your Email',
              ),
            ),TextField(
              controller: phoneTextconroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
                hintText: 'Enter your Phone Number',
              ),
            ),


            // Button to add the task
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Save Button
                MyButton(text: "Save", onPressed: onSave),

            //     //Cancel Button
            //     MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
