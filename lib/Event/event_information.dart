import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class EventInformation extends StatelessWidget {
  const EventInformation({
    super.key,
    required this.EventName,
    required this.ClubName,
    required this.EventAdress,
    required this.Price,
    required this.Followers,
    required this.ProfileImage,
    required this.Description,
    required this.Location,
    required this.Date,
    required this.Time,    
    });
    final String EventName , EventAdress, Price, Followers,ProfileImage, Description,Location,Date,Time,ClubName;

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
               child: Column(
                          children: [
                            // Row with Event Name and Price
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      EventName, // Example text
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      EventAdress,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 44,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF6D9773),
                                    borderRadius: BorderRadius.circular(29),
                                  ),
                                  child: Center(
                                    child: Text(
                                      Price,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            // Row with Image and Club Profile
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50), // Radius to the image
                                    child: Image.asset(
                                      ProfileImage,
                                      fit: BoxFit.cover, // Adjusts the image to cover the entire container
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ClubName,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      Followers +' '+'followers',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            // Description Section
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      ReadMoreText(
                                        Description,
                                        trimLength: 70,
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                        lessStyle: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF6D9773),
                                        ),
                                        moreStyle: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF6D9773),
                                        ),
                                      ),
                                      SizedBox(height: 20),

                                      // Location and Date Section
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: Icon(
                                              Icons.location_on_outlined,
                                              color: Color(0xFF6D9773),
                                              size: 30,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                EventAdress,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Text(
                                                Location,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: Icon(
                                              Icons.calendar_month_outlined,
                                              color: Color(0xFF6D9773),
                                              size: 30,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                Date,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Text(
                                                Time,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
  }
}