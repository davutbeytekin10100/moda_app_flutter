import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String imgPath;

  const DetailPage({super.key, required this.imgPath});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            // bu çok güzel bunu kullan ..
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.pink.shade500),
                  image: DecorationImage(
                    image: AssetImage(widget.imgPath),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.pink.shade500,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              shadowColor: Colors.amber.shade500,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(width: 2, color: Colors.green.shade500),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 2, color: Colors.pink.shade500),
                                image: DecorationImage(
                                  image: AssetImage("assets/dress.jpg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " LAMINATED",
                              style: TextStyle(
                                  color: Colors.pink.shade500,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              " Design Clothes",
                              style: TextStyle(
                                color: Colors.pink.shade500,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 170,
                              child: Text(
                                "     One button V-neck sling long-sleeved waist female stitching dress",
                                style: TextStyle(
                                    color: Colors.pink.shade500, fontSize: 13),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.pink.shade500,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$9845",
                            style: TextStyle(color: Colors.amber, fontSize: 18),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: FloatingActionButton(
                              backgroundColor: Colors.amber,
                              onPressed: () {},
                              child: Center(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.pink.shade500,
                                    size: 22,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                border: Border.all(width: 2, color: Colors.pink.shade500),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "LAMINATED",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.pink.shade500,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
