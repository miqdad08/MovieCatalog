import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_catalog/detail_screen.dart';
import 'package:movie_catalog/model/catalog.dart';

class HomeScreen extends StatelessWidget {
  String textName;
  final List<Catalog> catalog = catalogList;

  HomeScreen({Key? key, required this.textName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff7fbfe),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //image profil
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: "Welcome back ",
                                  style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)
                                ),
                                TextSpan(
                                  text: textName,
                                  style: const TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )
                                )
                              ]
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                ///search bar
                Container(
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Rekomendasi saat ini",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),

                ///Image Slider
                CarouselSlider(
                  options: CarouselOptions(
                      height: 250.0, enlargeCenterPage: true, autoPlay: true),
                  items: catalog.map((catalog) {
                    return Builder(
                      builder: (BuildContext context) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(catalog: catalog);
                            }));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Material(
                              elevation: 20,
                              child: Stack(children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 380,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      catalog.imageUrls,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                // Positioned(
                                //   width: 250,
                                //   left: 7,
                                //   top: 220,
                                //   child: Text(
                                //     catalog.title,
                                //     style: const TextStyle(
                                //         fontSize: 20,
                                //         fontWeight: FontWeight.bold,
                                //         color: Colors.white),
                                //   ),
                                // ),
                              ]),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),

                const SizedBox(height: 10),
                const Text(
                  "Pemeran saat ini",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ///Slider
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                      child: ListView(
                        // padding: EdgeInsets.only(left: 10),
                        scrollDirection: Axis.horizontal,
                        children: catalog.map((catalog) {
                          return CircleAvatar(
                            backgroundImage: NetworkImage(catalog.director),
                            radius: 40,
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                const Text(
                  "Film Terkini",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 255,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: catalog.map((catalog) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreen(
                                  catalog: catalog,
                                );
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Stack(children: [
                                SizedBox(
                                  width: 180,
                                  height: 230,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      catalog.imageUrls,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  width: 160,
                                  left: 7,
                                  top: 195,
                                  child: Text(
                                    catalog.title,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Film Lainnnya",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final Catalog catalog = catalogList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(
                              catalog: catalog,
                            );
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(0.0, 0.0),
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10, bottom: 10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        catalog.imageUrls,
                                        height: 130,
                                        width: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20.0),
                                            child: Text(
                                              catalog.title,
                                              style:
                                                  const TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(catalog.author),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(Icons.star, color: Colors.amber,),
                                              Text(catalog.rating)
                                            ],
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
                      );
                    },
                    itemCount: catalogList.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
