// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:movie_catalog/detail_screen.dart';
//
// import '../model/model.dart';
//
// class ImageSlider extends StatelessWidget {
//   const ImageSlider({Key? key,}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  FutureBuilder(
//       future: Catalog.getUpcomingMovies(),
//       builder: (context, snapshot) {
//         var lCatalog = snapshot.data as List<Catalog>;
//         return SizedBox(
//           height: 255,
//           child: ListView.builder(
//               itemCount: lCatalog.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                           return DetailScreen(Catalog: lCatalog[index]);
//                         }));
//                   },
//                   child: Padding(
//                       padding: const EdgeInsets.all(6.0),
//                       child: Stack(
//                         children: [
//                           SizedBox(
//                             width: 200,
//                             height: 255,
//                             child: ClipRRect(
//                               borderRadius:
//                               BorderRadius.circular(10),
//                               child: Image.network(
//                                 "https://www.themoviedb.org/t/p/w1280${lCatalog[index].poster}",
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             width: 150,
//                             left: 7,
//                             top: 215,
//                             child: Text(
//                               lCatalog[index].title,
//                               style: const TextStyle(
//                                 fontSize: 13,
//                               ),
//                             ),
//                           ),
//                         ],
//                       )),
//                 );
//               }),
//         );
//       },
//     ),
//   }
// }
