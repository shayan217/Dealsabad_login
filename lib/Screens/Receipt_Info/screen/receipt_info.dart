import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Receipt extends StatelessWidget {
  Receipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Receipt',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          
          child: Card(
            elevation: 0.7,
          surfaceTintColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Radio<bool>(
                    value: true,
                    groupValue: null, // You need to manage the group value for radio buttons.
                    onChanged: (bool? value) {
                      // Do something when radio button is changed.
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Left Text',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Right Text',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
