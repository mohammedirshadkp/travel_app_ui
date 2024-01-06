// detail.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/constance.dart';
import 'core/global_variables.dart';
import 'core/pallete.dart';
import 'model_class.dart';

class PlaceDetailsScreen extends StatelessWidget {
  final Place place;

  const PlaceDetailsScreen(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: h * 0.5,
              width: w,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Stack(children: [
                Image.asset(
                  Images.detail, // Replace with your image source
                  fit: BoxFit.cover,
                  width: double.infinity,
                  // height: 150, // Adjust the height as needed
                ),
                const Positioned(
                  bottom: 15,
                  right: 15,
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white38,
                    child: Icon(
                      CupertinoIcons.arrow_down_right_arrow_up_left,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                // color: Colors.red,
                height: h * 0.42,
                width: w * 0.92,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.name,
                              style: GoogleFonts.montserrat(
                                  color: Pallete.blackColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.pin_drop,
                                  size: 13,
                                  color: Pallete.secondary,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  place.location,
                                  style: GoogleFonts.montserrat(
                                      color: Pallete.blackColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: w * 0.4,
                        ),
                        const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black12,
                            child: Icon(
                              Icons.favorite_outlined,
                              color: Colors.red,
                              size: 15,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(
                                    0, 2), // Offset to bottom right
                              ),
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rating",
                              style: GoogleFonts.montserrat(
                                  color: Pallete.blackColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "${place.rating.toString()}(3.2K)",
                              style: GoogleFonts.montserrat(
                                  color: Pallete.blackColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(
                                    0, 2), // Offset to bottom right
                              ),
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.line_axis_rounded,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Distance",
                              style: GoogleFonts.montserrat(
                                  color: Pallete.blackColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "3000 km",
                              style: GoogleFonts.montserrat(
                                  color: Pallete.blackColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(
                                    0, 2), // Offset to bottom right
                              ),
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.apartment,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Restaurant",
                              style: GoogleFonts.montserrat(
                                  color: Pallete.blackColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "108 avail",
                              style: GoogleFonts.montserrat(
                                  color: Pallete.blackColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      place.description,
                      style: GoogleFonts.montserrat(
                          color: Pallete.blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          width: w * 0.7,
          child: FloatingActionButton.extended(
            onPressed: () {
              // Add your functionality here
            },
            label: Text(
              'Book a Trip',
              style: GoogleFonts.montserrat(
                  color: Pallete.whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ),
            backgroundColor: Pallete.secondary,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
