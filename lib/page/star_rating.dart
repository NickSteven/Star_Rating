// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  const StarRating({Key? key}) : super(key: key);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _rating = 0;
  @override
  Widget build(BuildContext context) {
    void setRatingAsOne() {
      setState(() {
        (_rating >= 1 ? _rating = 0 : _rating = 1);
      });
    }

    void setRatingAsTwo() {
      setState(() {
        (_rating >= 2 ? _rating = 1 : _rating = 2);
      });
    }

    void setRatingAsThree() {
      setState(() {
        (_rating >= 3 ? _rating = 2 : _rating = 3);
      });
    }

    void setRatingAsFour() {
      setState(() {
        (_rating >= 4 ? _rating = 3 : _rating = 4);
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: Color.fromRGBO(18, 20, 24, 1)),
            ),
            Center(
              child: Column(
                children: [
                  // Green cube
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(216, 255, 101, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 25),
                            Text(
                              _rating.toString(),
                              style: TextStyle(
                                  fontSize: 100, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            // Star text
                            Text(
                              _rating > 1 ? "Stars" : "Star",
                              style: TextStyle(fontSize: 35),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  // Green stars
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: Row(
                      // tds
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Icon(
                            (_rating >= 1
                                ? Icons.star
                                : Icons.star_border_outlined),
                            color: Color.fromRGBO(216, 255, 101, 1),
                            size: 30,
                          ),
                          onTap: () {
                            setRatingAsOne();
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            (_rating >= 2
                                ? Icons.star
                                : Icons.star_border_outlined),
                            color: Color.fromRGBO(216, 255, 101, 1),
                            size: 30,
                          ),
                          onTap: () {
                            setRatingAsTwo();
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            (_rating >= 3
                                ? Icons.star
                                : Icons.star_border_outlined),
                            color: Color.fromRGBO(216, 255, 101, 1),
                            size: 30,
                          ),
                          onTap: () {
                            setRatingAsThree();
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            (_rating >= 4
                                ? Icons.star
                                : Icons.star_border_outlined),
                            color: Color.fromRGBO(216, 255, 101, 1),
                            size: 30,
                          ),
                          onTap: () {
                            setRatingAsFour();
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
