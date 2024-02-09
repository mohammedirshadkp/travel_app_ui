// home_page.dart
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/core/pallete.dart';
import '../model_class.dart';
import '../core/constance.dart';
import '../core/global_variables.dart';
import 'Detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool like = false;
  List<Map<String, dynamic>> categoryList = [
    {'name': 'Lake ', 'icon': Icons.menu},
    {'name': 'Beach ', 'icon': Icons.beach_access_outlined},
    {'name': 'Mountain ', 'icon': Icons.forest},
    {'name': 'Mountain ', 'icon': Icons.forest},
    {'name': 'Mountain ', 'icon': Icons.forest},
    // Add more categories as needed
  ];
  final List<Place> dummyPlaces = [
    Place(
      name: 'Nusa Pedina',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est vel odio elementum non id venenatis, elementum. Enim augue velit tristique eu viverra. Massa.',
      rating: 4.5,
      distance: 10.0,
      noOfRestaurants: 3,
      location: 'ReykJavic,iceland',
    ),
    Place(
      name: 'Fagradalsfjali',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est vel odio elementum non id venenatis, elementum. Enim augue velit tristique eu viverra. Massa.',
      rating: 4.2,
      distance: 15.0,
      noOfRestaurants: 5,
      location: 'Bali,indusia',
    ),
  ];

  int _selectedDotIndex = 2;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Pallete.whiteColor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SvgPicture.asset(
            Images.menu,
            width: 10,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(Images.avatar),
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi John,',
              style: GoogleFonts.montserrat(
                  color: Pallete.primaryColor, fontSize: 20),
            ),
            Text(
              'Where do you',
              style: GoogleFonts.montserrat(
                  color: Pallete.primaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'wanna go?',
              style: GoogleFonts.montserrat(
                  color: Pallete.primaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: h * 0.36,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(children: [
                    Container(
                      height: h * 0.3,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35)),
                      child: Image.asset(
                        Images.mainpic,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      left: 23,
                      bottom: 30,
                      child: Text(
                        'Landmannalaugar',
                        style: GoogleFonts.montserrat(
                            color: Pallete.whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 23,
                      bottom: 10,
                      child: Text(
                        ' Fjallabak, Iceland',
                        style: GoogleFonts.montserrat(
                            color: Pallete.whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                    height: h * 0.035,
                    width: w * 0.3,
                    color: Colors.white,
                    child: Align(
                      alignment: Alignment.center,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedDotIndex = index;
                              });
                            },
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: _selectedDotIndex == index
                                    ? const CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.black12,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Pallete.secondary),
                                        ),
                                      )
                                    : const CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.grey,
                                      )),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.08,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 12, bottom: 16, top: 16),
                      child: Container(
                        height: 10,
                        // width: 60,
                        decoration: BoxDecoration(
                            color: Pallete.secondary,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.local_fire_department_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Popular  ',
                              style: GoogleFonts.montserrat(
                                  color: Pallete.whiteColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    index = index - 1;
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 12, bottom: 16, top: 16),
                      child: Container(
                        height: h * 085,
                        decoration: BoxDecoration(
                            color: Pallete.whiteColor,
                            boxShadow: const [
                              BoxShadow(color: Colors.grey, spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            Icon(
                              categoryList[index]["icon"],
                              color: Colors.black,
                            ),
                            Text(
                              categoryList[index]['name'],
                              style: GoogleFonts.montserrat(
                                  color: Pallete.blackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: h * 0.27,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    dummyPlaces.length, // Replace with your data list length
                itemBuilder: (context, index) {
                  Place place =
                      dummyPlaces[index]; // Replace with your data structure

                  return InkWell(
                    onTap: () {
                      _navigateToPlaceDetails(context, dummyPlaces[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 20, bottom: 5, top: 20, left: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Pallete.whiteColor,
                        ),
                        width: w * 0.6,
                        height: h * 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Image.asset(
                                      Images
                                          .Thumbnail, // Replace with your image source
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      // height:
                                      //     150, // Adjust the height as needed
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  bottom: 10,
                                  child: Text(
                                    place.name, // Replace with your place name
                                    style: GoogleFonts.montserrat(
                                        color: Pallete.blackColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  right: 18,
                                  top: 18,
                                  child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.white30,
                                      child: like == false
                                          ? const Icon(
                                              Icons.favorite_border,
                                              color: Pallete
                                                  .whiteColor, // Replace with your place name
                                            )
                                          : const Icon(
                                              Icons.favorite_outlined,
                                              color: Colors
                                                  .red, // Replace with your place name
                                            )),
                                ),
                                Positioned(
                                  left: 10,
                                  bottom: 0,
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.pin_drop,
                                        size: 10,
                                        color: Pallete.secondary,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        place
                                            .location, // Replace with your location
                                        style: GoogleFonts.montserrat(
                                            color: Pallete.blackColor,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  bottom: 0,
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Pallete.secondary,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        place.rating
                                            .toString(), // Replace with your rating
                                        style: GoogleFonts.montserrat(
                                            color: Pallete.blackColor,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _navigateToPlaceDetails(BuildContext context, Place place) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PlaceDetailsScreen(place)),
  );
}
