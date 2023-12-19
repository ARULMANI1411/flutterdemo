import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:untitled/video%20player.dart';

import 'colors..dart';
import 'ott.dart';
class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  bool _switch=false;
  ThemeData _dark= ThemeData(brightness: Brightness.dark);
  ThemeData _light= ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:_switch?_dark:_light,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:
                  (context)=>ott()));
            },

          ),
          title:  Container(
            width: 280,
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Movies,Shows and more",
                filled: true,

                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          actions: [
            Text('THEAME',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Switch(
              value: _switch,
              onChanged: (_newvalue){
                setState(() {
                  _switch=_newvalue;
                });
              },
            ),
          ],
        ),

        body:
        ListView(
          children: [
            SizedBox(height: 10,),
            Container(
              height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('People Search For',style: TextStyle(
                color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold,fontSize: 20
              ),),
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: StaggeredGrid.count(
                  crossAxisCount:4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  StaggeredGridTile.count(crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                      child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/aa1.jpg',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: ClipRRect(  borderRadius: BorderRadius.circular(5),
                        child: Image.asset('assets/vijay.jfif',fit: BoxFit.fill,)
                    ),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 1,
                    mainAxisCellCount:1 ,
                    child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/aa3.jpg',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: ClipRRect(  borderRadius: BorderRadius.circular(5),child: Image.asset('assets/vidutha.jfif',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 4,
                    mainAxisCellCount: 2,
                    child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/vijay.jfif',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 2,
                    mainAxisCellCount:2 ,
                    child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/aa3.jpg',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/vaaththi.jfif',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.asset('assets/aa1.jpg',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.asset('assets/vijay.jfif',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 4,
                    mainAxisCellCount: 2,
                    child:ClipRRect ( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/vetha.jfif',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/jilla.jfif',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 2,
                    mainAxisCellCount:1 ,
                    child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/vaaththi.jfif',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/vidutha.jfif',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/kamal.jpg',fit: BoxFit.fill,)),
                  ),
                  StaggeredGridTile.count(crossAxisCellCount: 4,
                    mainAxisCellCount: 2,
                    child: ClipRRect( borderRadius: BorderRadius.circular(5),child: Image.asset('assets/vickram.jfif',fit: BoxFit.fill,)),
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
