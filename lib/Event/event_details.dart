import 'package:flutter/material.dart';
import 'package:frontend/Event/event_details_header.dart';
import 'package:frontend/Event/event_information.dart';
import 'package:frontend/Ticket.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  double _topPosition = 390; // Initial position of the container
  double _startVerticalDrag = 0; // Track initial drag position
  final double _upperLimit = 200; // Maximum upward movement limit
  final double _lowerLimit = 400; // Maximum downward movement limit

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top Red Container with Image and Buttons
          EventDetailsHeader(
            ImagePath: 'assets/event3.jpg',
          ),

          // Draggable Container
          Positioned(
            top: _topPosition,
            left: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onVerticalDragStart: (details) {
                // Capture the start position of the drag
                _startVerticalDrag = details.localPosition.dy;
              },
              onVerticalDragUpdate: (details) {
                setState(() {
                  // Update the container's position during dragging
                  _topPosition += details.delta.dy;

                  // Set boundaries to control how far the container can move up or down
                  _topPosition = _topPosition.clamp(_upperLimit, _lowerLimit);
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: SingleChildScrollView(
                  // Added scroll view to prevent overflow
                  child: Column(
                    children: [
                      // Drag Handle
                      Container(
                        width: 80,
                        height: 8,
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      // Main Content with Padding
                      EventInformation(
                        EventName: 'Atomic Code',
                        EventAdress: 'Constantine, Nouvelle Ville',
                        ClubName: 'Atomic Code',
                        Price: '\$65.50',
                        Followers: '12K',
                        Date: 'Aug, 07/2024',
                        Location: 'Abdelhamide Mehri University',
                        Time: '8:00 - 10:00',
                        ProfileImage: 'assets/profile2.png',
                        Description:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in pharetra enim.',
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Button Positioned at the Bottom of the Screen
          Positioned(
            left: 75,
            right: 75,
            bottom: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ticket()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6D9773),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text(
                'Book Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
