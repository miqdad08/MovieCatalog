import 'package:flutter/material.dart';
import 'package:movie_catalog/model/model.dart';
import 'package:movie_catalog/services/services.dart';
import 'package:movie_catalog/widget/catalog_item.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

TextEditingController controller = new TextEditingController();

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var catalog = CatalogApi();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 55,
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
                SizedBox(height: 10,),
                FutureBuilder(
                    future: catalog.getPopularMovie(),
                    builder: (context, snapshot) => snapshot.data != null
                        ? _listMovie(snapshot.data as List<Catalog>)
                        : Center(child: CircularProgressIndicator()))
              ],
            ),

          ),
        ),
      ),
    );
  }
}


Widget _listMovie(List<Catalog> catalog) {
  return ListView.builder(
      itemBuilder: (context, index) => CatalogItem(Catalog: catalog[index]),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: catalog.length);
}
