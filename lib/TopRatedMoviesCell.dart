import 'package:flutter/material.dart';
import 'package:movie_griller/MovieDetail.dart';
class TopRatedMovieCellHome extends StatelessWidget {
  final top_rated_cell;
  final image_url =   'https://image.tmdb.org/t/p/w500';
  TopRatedMovieCellHome(this.top_rated_cell);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, new MaterialPageRoute(
          fullscreenDialog: true,
            builder: (context){
              return new MovieDetail(top_rated_cell['id']);
            }
        ));
        },
      child: Column(
        children: <Widget>[
          new Container(
        alignment: Alignment.center,
        child: new Container(
          height: 180.0,
          width: 130.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            image: DecorationImage(
              image: NetworkImage(image_url + top_rated_cell['poster_path']),
              fit: BoxFit.cover
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black87,
                blurRadius: 5.0,
                offset: Offset(2.0, 3.0)
              )
            ]
          ),
        ),
      ),
      new Container(
        alignment: Alignment.center,
        width: 120.0,
        margin: const EdgeInsets.only(top: 10.0),
        
        child: new Text(top_rated_cell['title'],style: TextStyle(
          fontFamily: 'google',
          fontWeight: FontWeight.w400
        ),),
      )
        ],
      )
    );
  }
}