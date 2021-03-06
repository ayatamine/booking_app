import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bookingapp/screens/home.dart';
import 'package:bookingapp/screens/Login.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(

          child: Container(
            height: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
            child: ListView(
               children: <Widget>[
                 Column(
                   textDirection: TextDirection.ltr,crossAxisAlignment: CrossAxisAlignment.end,
                   children: <Widget>[
                     Align(
                         alignment: Alignment.topRight,
                         child: GestureDetector(
                           onTap: (){Navigator.pop(context);},
                           child: Icon(Icons.arrow_forward,color: Colors.red[300],),
                         )
                     ),
                     SizedBox(height: 30,),
                     Text('تسجيل',style: TextStyle(color:Colors.grey[800],fontSize: 25,fontWeight: FontWeight.bold)),
                     SizedBox(height: 50,),
                     TextField(textDirection: TextDirection.rtl,
                       textAlign: TextAlign.right,keyboardType: TextInputType.text,
                       decoration: InputDecoration(


                         hintText: 'الاسم الكامل',
//
//                    border: OutlineInputBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(8)),
//                    ),
//                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                         filled: true,
                         fillColor: Colors.grey.withOpacity(0.1),

                       ),
                     ),
                     SizedBox(height: 10,),
                     TextField(textDirection: TextDirection.rtl,
                       textAlign: TextAlign.right,keyboardType: TextInputType.emailAddress,

                       decoration: InputDecoration(
                         hintText: 'البريد الالكتروني',
                         filled: true,
                         fillColor: Colors.grey.withOpacity(0.1),

                       ),
                     ),
                     SizedBox(height: 10,),
                     TextField(textDirection: TextDirection.rtl,
                       textAlign: TextAlign.right,keyboardType: TextInputType.visiblePassword,
                       obscureText: true,
                       decoration: InputDecoration(
                         hintText: 'كلمة السر',
                         filled: true,
                         fillColor: Colors.grey.withOpacity(0.1),

                       ),
                     ),
                     SizedBox(height: 15,),
                     Row(
                       children: <Widget>[
                         Expanded(
                           child: RaisedButton(
                             child: const Text('تسجيل',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                             color: Colors.red[200],
                             padding:EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                             highlightColor: Colors.red,textColor: Colors.white,
                             onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (_)=>Home()));},

                           ),
                         ),
                       ],
                     ),
                     SizedBox(height: 10,),
                     Row(
                       textDirection: TextDirection.rtl,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Text('هل لديك حساب ؟',style: TextStyle(color: Colors.grey[800])),
                         FlatButton(
                           child:  Text('سجل الدخول',style: TextStyle(color: Colors.red[300])),
                           onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (_)=>Login()));},
                         ),
                       ],
                     )
                   ],
                 ),
               ],
            ),
          ),
        ),
      ),
    );
  }
}
