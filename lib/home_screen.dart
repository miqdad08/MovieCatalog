import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_catalog/model/catalog.dart';
import 'package:movie_catalog/model/model.dart';
import 'package:movie_catalog/services/services.dart';
import 'package:movie_catalog/widget/caraousel.dart';
import 'package:movie_catalog/widget/catalog_item.dart';
import 'package:movie_catalog/widget/image_slider.dart';
import 'package:tmdb_api/tmdb_api.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  late String textName;

  @override
  Widget build(BuildContext context) {
    var catalog = CatalogApi();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff7fbfe),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: SafeArea(
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
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: "Welcome back ",
                                  style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                              TextSpan(
                                  // text: textName,
                                  style: TextStyle(
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ))
                            ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                FutureBuilder(
                    future: catalog.getNowPlayingMovie(),
                    builder: (context, snapshot) => snapshot.data != null
                        ? _carouselSlider(snapshot.data as List<Catalog>)
                        : Center(child: CircularProgressIndicator())),

                // const Padding(
                //   padding: EdgeInsets.all(10),
                //   child: Text(
                //     "Pemeran saat ini",
                //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                //   ),
                // ),
                // const SizedBox(height: 10),

                ///Slider
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     SizedBox(
                //       height: 60,
                //       child: ListView(
                //         // padding: EdgeInsets.only(left: 10),
                //         scrollDirection: Axis.horizontal,
                //         children: catalog.map((catalog) {
                //           return CircleAvatar(
                //             backgroundImage: NetworkImage(catalog.director),
                //             radius: 40,
                //           );
                //         }).toList(),
                //       ),
                //     ),
                //   ],
                // ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Upcoming Movies",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                FutureBuilder(
                  future: catalog.getUpcomingMovies(),
                  builder: (context, snapshot) => snapshot.data != null
                      ? _listImageSlider(snapshot.data as List<Catalog>)
                      : Center(child: CircularProgressIndicator()),
                ),

                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Popular Movie",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                FutureBuilder(
                    future: catalog.getPopularMovie(),
                    builder: (context, snapshot) => snapshot.data != null
                        ? _listMovie(snapshot.data as List<Catalog>)
                        : Center(child: CircularProgressIndicator())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_listImageSlider(List<Catalog> lCatalog) {
  return Column(
    children: [
      SizedBox(
        height: 255,
        child: ListView.builder(
            itemCount: lCatalog.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(Catalog: lCatalog[index]);
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SizedBox(
                    width: 180,
                    height: 225,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://www.themoviedb.org/t/p/w1280${lCatalog[index].poster}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    ],
  );
}

Widget _listMovie(List<Catalog> catalog) {
  return ListView.builder(
      itemBuilder: (context, index) => CatalogItem(Catalog: catalog[index]),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: catalog.length);
}

// Widget _imageSlider(List<Catalog> catalog) {
//   return ListView.builder(
//       scrollDirection: Axis.vertical,
//       itemBuilder: (context, index) => const ImageSlider(Catalog: Catalog),
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: catalog.length);
// }

Widget _carouselSlider(List<Catalog> catalog) {
  return Container(
    child: CarouselSlider.builder(
      itemCount: catalog.length,
      options: CarouselOptions(
        enlargeCenterPage: true,
        height: 250,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
      ),
      itemBuilder: (context, i, id) {
        return CarouselSliderMovie(catalog: catalog[i]);
      },
    ),
  );
}
