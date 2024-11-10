import 'package:flutter/material.dart';

class Wid extends StatelessWidget {
  String prayerName;
  String time;

  Wid({required this.prayerName,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,

          itemBuilder: (context, index)
          {
            return Card(
              margin: EdgeInsets.all(19),
              shadowColor: Colors.black,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(prayerName,
                    style: TextStyle(fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  Text(time,
                    style: TextStyle(fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}