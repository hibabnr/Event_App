import 'package:barcode_widget/barcode_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';

class TicketData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TicketWidget(
      semicircleOffset: 150.0,
      width: 346,
      height: 600,
      isCornerRounded: true,
      child: Column(
        children: [
          // Top Half with Image
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Container(
              width: double.infinity,
              height: 200, // Adjust this value to change the proportion of the image
              child: Image.asset(
                'assets/event3.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Bottom Half with Ticket Details
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Event',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Atomic Code',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Date',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '22 Aug 2024',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Constantine',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Type',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Vip',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Time',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '08:00 --> 10:00',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Price',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$65.50',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                DottedLine(
                  dashColor: Colors.grey,
                  lineThickness: 4,
                  // dashGapLength: 1,
                  dashLength: 20,
                ),

                SizedBox(height: 20,),


                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
                  child: ClipRRect(
                    child: BarcodeWidget(data: "https://flutter.dev/", 
                    barcode: Barcode.code128(),
                    drawText: false,
                    width: double.maxFinite,
                    height: 70,
                    ),
                  ),
                )
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
