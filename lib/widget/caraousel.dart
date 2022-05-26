import 'package:flutter/material.dart';
import 'package:movie_catalog/detail_screen.dart';

class CarouselSliderMovie extends StatelessWidget {
  final catalog;

  CarouselSliderMovie({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(Catalog: catalog),));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white
          )),
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
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 380,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://www.themoviedb.org/t/p/w1280"+catalog.backdropPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.1, 0.8],
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.white.withOpacity(0.1)
                        ]
                    )
                ),
              ),
              Positioned(
                  bottom: 15,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          catalog.title, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
