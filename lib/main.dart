import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppWork(),
    );
  }
}

// ----------------------------------------------------

class MyAppWork extends StatelessWidget {
  const MyAppWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 97, 140, 149),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(
                'assets/images/car_logo.png',
              ),
            ),
            const Text(
              'Leopard',
              style: TextStyle(
                  color: Color.fromARGB(255, 206, 23, 23),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.black, offset: Offset(2, 2))]),
            )
          ],
        ),
      ),

// ------------------Starting Work-------------------

      body: Center(
        child: SizedBox.expand(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  'assets/images/back_photo.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 450,
                  width: 700,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),

// ---------------Child-------------

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
// ----------------------------list no 1

                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 420,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 130, 162, 169),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30))),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Image.asset(
                                    'assets/images/car_logo.png',
                                    fit: BoxFit.fill,
                                    height: 130,
                                    width: 130,
                                  ),
                                ),
                                const Flexible(
                                  flex: 1,
                                  child: Text(
                                    'Leopard',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 206, 23, 23),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black,
                                          offset: Offset(2, 2),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  flex: 1,
                                  child: Container(
                                    height: 28,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 206, 23, 23),
                                        borderRadius:
                                            BorderRadius.circular(34)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const Expanded(
                                            flex: 5,
                                            child: Text('Monthly',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                        const SizedBox(width: 1),
                                        Container(
                                          height: 26,
                                          width: 55,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 130, 162, 169),
                                              borderRadius:
                                                  BorderRadius.circular(34)),
                                          child: const Center(
                                            child: Text('Yearly',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 1,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

// --------------------------List no 2-----------------------

                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 420,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Flexible(
                                  fit: FlexFit.loose,
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1613751382362-6492c991bc91?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGhvbmRhJTIwY2l2aWN8ZW58MHx8MHx8fDA%3D',
                                    fit: BoxFit.fill,
                                    height: 70,
                                    width: 105,
                                  )),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Honda Civic',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'Discription:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Color : Dark Blue',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Engine : 1800cc',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Body Type : Hatchback',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Model : 2000',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Generation : 6th Generation',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),

// -----------------------------List no 3---------------------------

                      Expanded(
                        flex: 3,
                        child: Stack(
                          children: [
                            Container(
                              height: 600,
                              child: Container(
                                height: 700,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 23, 23),
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

// ------------------------------List no 4-----------------------

                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 420,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      // child: Stack(
      //   children: [
      //     SizedBox(
      //       width: 10000,
      //       child: Image.network(
      //         'https://thumbs.dreamstime.com/b/background-design-abstract-beautiful-banner-bright-decoration-polygon-website-frame-art-backdrop-128925374.jpg',
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
