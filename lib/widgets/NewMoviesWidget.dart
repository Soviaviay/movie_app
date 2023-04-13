import 'package:flutter/material.dart';
//bagian new movie
class NewMoviesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                ),
              ),
            ],

          ),
        ),

        //bagian kotak untuk new moviw
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              //rumus.
              for(int i=1; i<11; i++)
              InkWell(
                onTap: (){},
                child: Container(
                  width: 190,
                  height: 300,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Color(0xff292b37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff292b37).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius:6,
                      ),
                    ],
                     
                  ),

                //bagain gambar pada new movie.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        "images/$i.jpg",
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),

                    //text pada gambar new movie
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Movie Title Here",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Laga/Drama",
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),

                          //memberikan rating pada gambar new movie
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),

                              //memberikan angka pada rating
                              SizedBox(width: 5),
                              Text(
                                "8,5",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}