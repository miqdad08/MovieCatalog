import 'dart:io';

import 'package:flutter/material.dart';
import 'package:movie_catalog/model/catalog.dart';


class DetailScreen extends StatelessWidget {
  final Catalog catalog;

  DetailScreen({Key? key, required this.catalog}) : super(key: key);

  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7fbfe),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                catalog.imageUrls,
                width: 1000,
                height: 330,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              catalog.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 9),
            Text(
              catalog.description,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
