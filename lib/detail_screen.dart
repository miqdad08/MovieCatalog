import 'dart:io';

import 'package:flutter/material.dart';
import 'package:movie_catalog/model/catalog.dart';


class DetailScreen extends StatelessWidget {

  final Catalog;

  const DetailScreen({Key? key, required this.Catalog}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7fbfe),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children : [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    "https://www.themoviedb.org/t/p/w1280${Catalog.backdropPath}",
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  children : [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Catalog.title.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,),
                    ),
                  ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 30,),
                        SizedBox(width: 5,),
                        Text(
                          "${Catalog.rating},",
                          maxLines: 10,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text(
                          Catalog.date,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 9),
                    Text(
                      Catalog.description,
                      maxLines: 10,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
