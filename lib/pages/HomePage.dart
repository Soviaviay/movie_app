import 'package:flutter/material.dart';
import '../widgets/CustomNavBar.dart';
import '../widgets/NewMoviesWidget.dart';
import '../widgets/UpcomingWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                child: Row(
                  //gambar profil ke kanan.
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Sovia",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                          Text(
                          "What to Watch?",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                    //border untuk profil lingkaran.
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "images/profile.jpg",
                        height: 60,
                        width: 60,
                      ),
                    )
                  ],
                ),
              ),

              Container(
                //membuat box dan icon search
                height: 60,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xff292b37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 30,
                  ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 5),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white54),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                    ),
                  ),
                ]),
              ),

              //bagian upcoming lanjut ke upcoming widget
              SizedBox(height: 30),
              UpcomingWidget(),

              //bagian new movie lanjut ke NewMoviesWidget
              SizedBox(height: 40),
              NewMoviesWidget(),

            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}