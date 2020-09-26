import 'package:flutter/material.dart';
import 'package:bookingapp/screens/register.dart';
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/home.jpg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(1),
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.01),
                        Colors.black.withOpacity(0.025),
                      ]
                  )
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'انضم لعالمنا',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
              SizedBox(height: 15),
              Text(
                'سنساعدك للحصول على الافضل',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                ),
              ),
              SizedBox(height: 15),
              Text(
                'خبرة وأسبقية',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                ),
              ),
              SizedBox(height: 25),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Register()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 25),
            ],
          )
        ],

      ),

    );
  }
}

