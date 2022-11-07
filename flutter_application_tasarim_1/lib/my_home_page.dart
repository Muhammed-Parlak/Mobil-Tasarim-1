import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(
        backgroundColor: Color(0xFFFDD835),
        color: Colors.white,
        activeColor: Colors.grey,
        tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.apps),
          GButton(icon: Icons.add_shopping_cart),
          GButton(icon: Icons.back_hand),
          GButton(icon: Icons.emoji_emotions),
        ],
      ),
      appBar: (AppBar(
        elevation: 0,
        title: Text("Home"),
        leading: const Icon(Icons.arrow_back_ios_new_sharp),
        actions: const [
          Icon(Icons.auto_graph_sharp),
          Icon(Icons.search_outlined),
        ],
        backgroundColor: Color(0xFFFDD835),
      )),
      body: Stack(children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/limon.png",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                //üst resim
                Text(
                  "  \n\n  Citrus \n  & juice",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
        Padding(
          //orta kutu
          padding: EdgeInsets.only(top: 250),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(bottom: 60),
            decoration: BoxDecoration(
              //orta kutu dekorasyonu
              borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
              color: Colors.blueGrey[900],
            ),
            child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      //john doe resim
                      margin: EdgeInsets.only(left: 20, right: 5),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/profile_photo.png",
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Column(
                      //isimler
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Johhn Doe",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Graphic Designer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 20,
                        width: 100,
                        margin: EdgeInsets.only(left: 90),
                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.remove_red_eye_sharp,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text(
                              "  +300 Fans",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ))
                  ],
                )),
          ),
        ),
        Padding(
          //Listview arkasındaki beyaz alan
          padding: EdgeInsets.only(top: 330),
          child: Container(
            color: Colors.white,
            height: 700,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 0),
          child: Container(
            // color: Colors.white,
            child: ListView(shrinkWrap: true, children: [
              const SizedBox(
                height: 350,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Kart1
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amber,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            color: Colors.amber,
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/orange_fruit.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          //Textler List view içi card isimleri
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "Fruits",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Portakal",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ))
                    ],
                  ),
                  //kart2
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amber,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            color: Colors.amber,
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/strawberry_fruit.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          //Textler List view içi card isimleri
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "Fruits",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ))
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //3.Kart
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amber,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            color: Colors.amber,
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/apple_fruit.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          //Textler List view içi card isimleri
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "Fruits",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Apple",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ))
                    ],
                  ),
                  //4.Kart
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amber,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            color: Colors.amber,
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/watermelon_fruit.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          //Textler List view içi card isimleri
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "Fruits",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Watermelon",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ))
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amber,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            color: Colors.amber,
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/coconut_fruit.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          //Textler List view içi card isimleri
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "Fruits",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Coconut",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amber,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            color: Colors.amber,
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/raspberry_fruit.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          //Textler List view içi card isimleri
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "Fruits",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Raspberry",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ))
                    ],
                  ),
                ],
              ),
            ]),
          ),
          // Container(
          //   decoration: const BoxDecoration(
          //       borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
          //       color: Colors.white),
          //   width: MediaQuery.of(context).size.width,
          //   height: 500,
          //   child: ),
        ),
      ]),
    );
  }
}

//  Container(
//             decoration: const BoxDecoration(
//
//                 borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
//                 color: Colors.white),
//             width: MediaQuery.of(context).size.width,
//             height: 500,
//           ),

// GridView.count(
//               padding: EdgeInsets.all(20),
//               crossAxisCount: 2,
//               children: [
//                 // kart1
//                 Stack(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       height: 200,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.amber,
//                       ),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(150),
//                           color: Colors.amber,
//                           image: const DecorationImage(
//                             image: AssetImage(
//                               "assets/images/orange_fruit.png",
//                             ),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                         //Textler List view içi card isimleri
//                         height: 150,
//                         width: 150,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: const [
//                             Text(
//                               "Fruits",
//                               style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                             Text(
//                               "Portakal",
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           ],
//                         ))
//                   ],
//                 ),
//                 //kart2
//                 Stack(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       height: 200,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.amber,
//                       ),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(150),
//                           color: Colors.amber,
//                           image: const DecorationImage(
//                             image: AssetImage(
//                               "assets/images/strawberry_fruit.png",
//                             ),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                         //Textler List view içi card isimleri
//                         height: 150,
//                         width: 150,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: const [
//                             Text(
//                               "Fruits",
//                               style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                             Text(
//                               "Strawberry",
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           ],
//                         ))
//                   ],
//                 ),
//                 //kart3
//                 Stack(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       height: 200,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.amber,
//                       ),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(150),
//                           color: Colors.amber,
//                           image: const DecorationImage(
//                             image: AssetImage(
//                               "assets/images/apple_fruit.png",
//                             ),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                         //Textler List view içi card isimleri
//                         height: 150,
//                         width: 150,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: const [
//                             Text(
//                               "Fruits",
//                               style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                             Text(
//                               "Apple",
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           ],
//                         ))
//                   ],
//                 ),
//                 //kart4
//                 Stack(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       height: 200,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.amber,
//                       ),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(150),
//                           color: Colors.amber,
//                           image: const DecorationImage(
//                             image: AssetImage(
//                               "assets/images/watermelon_fruit.png",
//                             ),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                         //Textler List view içi card isimleri
//                         height: 150,
//                         width: 150,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: const [
//                             Text(
//                               "Fruits",
//                               style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                             Text(
//                               "Watermelon",
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           ],
//                         ))
//                   ],
//                 ),
//                 //kart5
//                 Stack(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       height: 200,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.amber,
//                       ),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(150),
//                           color: Colors.amber,
//                           image: const DecorationImage(
//                             image: AssetImage(
//                               "assets/images/coconut_fruit.png",
//                             ),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                         //Textler List view içi card isimleri
//                         height: 150,
//                         width: 150,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: const [
//                             Text(
//                               "Fruits",
//                               style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                             Text(
//                               "Coconut",
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           ],
//                         ))
//                   ],
//                 ),
//                 //kart6
//                 Stack(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       height: 200,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.amber,
//                       ),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(150),
//                           color: Colors.amber,
//                           image: const DecorationImage(
//                             image: AssetImage(
//                               "assets/images/raspberry_fruit.png",
//                             ),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                         //Textler List view içi card isimleri
//                         height: 150,
//                         width: 150,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: const [
//                             Text(
//                               "Fruits",
//                               style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                             Text(
//                               "Raspberry",
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           ],
//                         ))
//                   ],
//                 ),
//               ],
//             ),
