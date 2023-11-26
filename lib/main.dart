import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(body: 
      Column(
        children: [
          //62,36,17
          //48,14,32
          Container(
          width: double.infinity, 
          height: 120,
          decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
              const Color.fromRGBO(62, 36, 17, 1),
              const Color.fromRGBO(48, 14, 32, 1),
            ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Image.asset(width: 30,"assets/images/logo.png"),
                  ],
                ),
                SizedBox(width: 5,),
                Text("Music",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                
                ),
                ),
                Row(
                  children: [
                    Icon(Icons.podcasts, color: Colors.white,),
                    SizedBox(width: 15,),
                    Icon(Icons.search, color: Colors.white,),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 13,
                      backgroundImage: AssetImage("assets/images/p1.jpg"),
                    ),
                  ],
                ),
                
                
                ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryItem("Energize"),
                    CategoryItem("Workout"),
                    CategoryItem("Feel good"),
                    CategoryItem("Relaxation"),
                    CategoryItem("Chill out"),
                    CategoryItem("Rock"),
                    CategoryItem("Pop"),
                  ],
                ),
              ),
            ],
          ),
        ),
          Expanded(
            child: Container(
            width: double.infinity, 
            color: Color.fromRGBO(7, 5, 8, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("START RADİO FROM A SONG",
                    style: TextStyle(
                      color: Color.fromARGB(255, 187, 186, 186),
                      fontSize: 12,
                    ),
                    ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Quick Picks",
                                           style: TextStyle(
                                             color: Color.fromARGB(255, 255, 255, 255),
                                             fontSize: 20,
                                             fontWeight: FontWeight.bold,
                                           ),
                                           ),
                           Container(
                            
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                             child: Text(
                              "Play all",
                              style: TextStyle(
                                color: Color.fromARGB(255, 187, 186, 186),
                                fontSize: 12,
                              ),
                             ),
                           ),
                         ],
                       ),
                       
                       SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             Container(
                              width: size.width -10,
                               child: Column(
                                 children: [
                                   MusicRow("assets/images/cover1.jpeg","Moment,","PaulWetz & Dillistone"),
                                   MusicRow("assets/images/cover2.jpeg","Head in The Close,","Oscar & the Wolf"),
                                   MusicRow("assets/images/cover3.jpeg","Run it Down,","Nigel Stanford"),
                                   MusicRow("assets/images/cover4.jpeg","Party Day,","Artist"),
                                 ],
                               ),
                             ),
                             Column(
                               children: [
                                 MusicRow("assets/images/cover5.jpeg","Immunity,","Jon Hopkins"),
                                 MusicRow("assets/images/cover6.jpeg","NeverMind,","Nirvana"),
                                 MusicRow("assets/images/cover7.jpeg","Not Another,","Olivia de Silva"),
                                 MusicRow("assets/images/cover8.jpeg","Delta,","Ana Tijaux"),
                               ],
                             ),
                           ],
                         ),
                       ),
                       SizedBox(height: 20,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Forgotten Favorites",
                                           style: TextStyle(
                                             color: Color.fromARGB(255, 255, 255, 255),
                                             fontSize: 20,
                                             fontWeight: FontWeight.bold,
                                           ),
                                           ),
                           Container(
                            
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                             child: Text(
                              "Play all",
                              style: TextStyle(
                                color: Color.fromARGB(255, 187, 186, 186),
                                fontSize: 12,
                              ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 20,),
                       SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             MusicRow2("assets/images/cover1.jpeg","Moment,","PaulWetz & Dillistone"),
                             MusicRow2("assets/images/cover2.jpeg","Head in The Close,","Oscar & the Wolf"),
                             MusicRow2("assets/images/cover3.jpeg","Run it Down,","Nigel Stanford"),
                             MusicRow2("assets/images/cover4.jpeg","Party Day,","Artist"),
                             MusicRow2("assets/images/cover5.jpeg","Immunity,","Jon Hopkins"),
                             MusicRow2("assets/images/cover6.jpeg","NeverMind,","Nirvana"),
                             MusicRow2("assets/images/cover7.jpeg","Not Another,","Olivia de Silva"),
                             MusicRow2("assets/images/cover8.jpeg","Delta,","Ana Tijaux"),
                           ],
                         ),
                       ),
                ],
                ),
              ),
            ),
            ),
          ),
          Container(
          height: 60,
          width: double.infinity, 
          color: Color.fromRGBO(33, 33, 33, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.home, color: Colors.white,),
                    Text("Home", style: TextStyle(color: Colors.white, fontSize: 10,),),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.play_circle, color: Colors.white,),
                    Text("Samples", style: TextStyle(color: Colors.white, fontSize: 10,),),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.explore, color: Colors.white,),
                    Text("Explore", style: TextStyle(color: Colors.white, fontSize: 10,),),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.subscriptions, color: Colors.white,),
                    Text("Library", style: TextStyle(color: Colors.white, fontSize: 10,),),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.slideshow, color: Colors.white,),
                    Text("Upgrade", style: TextStyle(color: Colors.white, fontSize: 10,),),
                  ],
                ),
                
            
            ],
            ),
          ),
          ),

      ],
      ),
      ),
    );
  }

  Padding MusicRow2(String photo, String title, String artist) {
    return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                photo,
                                width: 150,
                              ),
                              SizedBox(height: 5,),
                              Text(
                                  title,
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                Text(
                                  artist,  
                                  style: TextStyle(
                                  color: Color.fromARGB(255, 181, 181, 181),
                                  fontSize: 14
                                ),
                                ),
                            ],
                          ),
                        ],
                       ),
                     );
  }

  Widget MusicRow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(photo,
                            width: 70,
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                Text(
                                  artist,  
                                  style: TextStyle(
                                  color: Color.fromARGB(255, 181, 181, 181),
                                  fontSize: 14
                                ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_vert, 
                        color: Colors.white,
                        ),
                      ],
                     ),
    );
  }

  Container CategoryItem(String text,) {
    return Container(
                    padding: const EdgeInsets.only(top:6.0, bottom: 6.0, left: 12, right: 12),
                    margin: const EdgeInsets.only(left:3.0, right: 3),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(19, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(37, 255, 255, 255),
                      ),
                    ),
                    child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    
                    ),
                    ),
                  );
  }
}

