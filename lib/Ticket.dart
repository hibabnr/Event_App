import 'package:flutter/material.dart';
import 'package:frontend/ticket_data.dart';
import 'package:iconsax/iconsax.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6D9773),
      body: Stack(
        children: [
          // Top Positioned Back Button
          Positioned(
            top: 40,
            left: 20,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.white38,
              elevation: 0,
              child: const Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
            ),
          ),
          // Title and Ticket Widget
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text(
                    'Your Ticket',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TicketData(),

              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.file_download_outlined,color: Colors.white,), // Icon displayed on the button
                      label: Text('Ticket',
                      style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20
                        ),), // Text displayed beside the icon
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        backgroundColor: Color(243119) ,
                      fixedSize: Size(160, 57)
                      ),
                    ),
                
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.qr_code,color: Colors.white,), // Icon displayed on the button
                      label: Text('QR code',
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 20

                        ),), // Text displayed beside the icon
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                        backgroundColor: Color(243119) ,
                        fixedSize: Size(160, 57)
                      ),
                    ),
                  ],
                ),
              )


                
            ],
            
          ),
        ],
      ),
    );
  }
}
