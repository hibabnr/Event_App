import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EventDetailsHeader extends StatelessWidget {
  const EventDetailsHeader({
    super.key,
    required this.ImagePath,
    this.isLiked = false,
    
    });

    final String ImagePath;
    final bool  isLiked;



  @override
  Widget build(BuildContext context) {
    return  Stack(
       children: [
        Positioned(
              top: 0,
              bottom: 420,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      ImagePath,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Positioned(
                      top: 40,
                      left: 20,
                      child: FloatingActionButton(
                        shape: CircleBorder(),
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        backgroundColor: Colors.white38,
                        elevation: 0,
                        child: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      right: 20,
                      child: FloatingActionButton(
                        shape: CircleBorder(),
                        onPressed: () {
                          // Add action here
                        },
                        backgroundColor: Colors.white38,
                        elevation: 0,
                        child: const Icon(
                          Iconsax.heart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
       ],
    );
  }
}