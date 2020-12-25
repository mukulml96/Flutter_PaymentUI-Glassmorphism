import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatefulWidget {
  static final tag = 'GlassMorphism';

  @override
  _GlassMorphismState createState() => _GlassMorphismState();
}

class _GlassMorphismState extends State<GlassMorphism> {
  Widget _buildbottomBar() {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(80),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\nPayment Details",
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\nAmount to pay:\n(Incl. of GST/Taxes)",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "250.56 INR",
                        style: TextStyle(
                            color: Colors.greenAccent[700],
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment
                        .topRight, // 10% of the width, so there are ten blinds.
                    colors: [
                      const Color(0xff0c0538),
                      const Color(0xff1a0d6b)
                    ], // red to yellow
                    tileMode: TileMode
                        .repeated, // repeats the gradient over the canvas
                  ),
                ),
                child: MaterialButton(
                  height: 60,
                  minWidth: double.infinity,
                  elevation: 5,
                  onPressed: () {
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.payment,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text(
                            '\t\tMake Payment',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 200, 0, 120),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        blurRadius: 24,
                        spreadRadius: 16,
                        color: Colors.black.withOpacity(0.2),
                      )
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0,
                        ),
                        child: Container(
                          height: 250,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                width: 1.5,
                                color: Colors.white.withOpacity(0.1),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Master Card",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color:
                                              Colors.white.withOpacity(0.6)),
                                    ),
                                    Image.asset('assets/images/rfid.png',
                                        height: 30),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/images/chip.png',
                                        height: 40),
                                    Text(
                                      "Debit Card",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color:
                                              Colors.white.withOpacity(0.8)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5500 0000 0000 0004",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                          color:
                                              Colors.white.withOpacity(0.8)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 22),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "VALID FROM",
                                                  style: TextStyle(
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.white
                                                          .withOpacity(0.8)),
                                                ),
                                                Text(
                                                  "05/20",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white
                                                          .withOpacity(0.8)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 20),
                                            Column(
                                              children: [
                                                Text(
                                                  "VALID TO",
                                                  style: TextStyle(
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.white
                                                          .withOpacity(0.8)),
                                                ),
                                                Text(
                                                  "12/25",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white
                                                          .withOpacity(0.8)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "MUKUL ML",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white
                                                  .withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                        'assets/images/mastercard.png',
                                        height: 40),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter, child: _buildbottomBar())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
