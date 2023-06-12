import 'package:deneme1/detailPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.pink.shade500,
        child: TabBar(
          indicatorColor: Colors.blue,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.white,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.white,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.white,
                size: 22,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.pink.shade500,
        elevation: 10,
        shadowColor: Colors.amber.shade500,
        title: Text(
          "Moda Application",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          CircleAvatar(
            child: IconButton(
              icon: Icon(Icons.camera),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          SizedBox(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                // baska yerde olusturduk ve burada cagırıyoruz bız.
                SizedBox(
                  width: 30,
                ),

                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 30,
                ),

                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 30,
                ),

                listeElemani('assets/model1.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 30,
                ),

                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 30,
                ),

                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 10,
              shadowColor: Colors.amber.shade500,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: Colors.pink.shade500,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 2, color: Colors.green.shade500),
                              image: DecorationImage(
                                image: AssetImage("assets/model2.jpeg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Amelia Harper",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                " 57 seconds ago",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          child: IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              size: 22,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '        This official website features a ribbed knit zipper jacket that is'
                      'modern and stylish. It looks very temparament and is recommend to friends',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 14,
                          height: 1.5),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                        imgPath: "assets/modelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.green.shade500),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage("assets/modelgrid1.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            imgPath:
                                                "assets/modelgrid2.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.green.shade500),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid2.jpeg"),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            imgPath:
                                                "assets/modelgrid3.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.green.shade500),
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid3.jpeg"),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 2, color: Colors.green.shade500),
                            color: Colors.black.withOpacity(0.8),
                          ),
                          child: Center(
                            child: Text(
                              " # Design Clothes",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: Colors.green.shade500),
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.black.withOpacity(0.8),
                          ),
                          child: Center(
                            child: Text(
                              " # Design",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.green.shade500,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                            child: Icon(
                          Icons.replay_5_rounded,
                          color: Colors.white.withOpacity(0.8),
                          size: 20,
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "9.785k",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.7)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.amber.shade500,
                            child: Icon(
                              Icons.comment,
                              size: 20,
                              color: Colors.white.withOpacity(0.7),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "879",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7)),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 240,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                  child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 15,
                              )),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4.789k",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.green.shade500),
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.pink.shade500,
                    borderRadius: BorderRadius.circular(14),
                    border:
                        Border.all(width: 2, color: Colors.deepPurple.shade500),
                    image: DecorationImage(
                      image: AssetImage(logoPath),
                      fit: BoxFit.contain,
                    )),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.pink.shade500.withOpacity(0.5),
            border: Border.all(width: 2, color: Colors.deepPurple.shade500),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text(
              "Follow me",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
