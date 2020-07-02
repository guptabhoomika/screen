import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Part1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        height: MediaQuery.of(context).size.height * 0.55,
      
        decoration: BoxDecoration(
            color: Color.fromRGBO(67,234,146, 0.70),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50.0))
        ),
      
      
       
              child: Padding(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 5),
          child: Column(
            
            children: [
               Text("Daily-Fitness",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
               SizedBox(height: 30,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(
                     //width: 30,
                     decoration: BoxDecoration(
                       color: Colors.grey.withOpacity(0.40),
                       shape: BoxShape.circle,
                       //borderRadius: BorderRadius.circular(20)
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(13.0),
                       child: Icon(Icons.border_color,color: Colors.white,size: 25,),
                     ),
                   ),
                   Container(
                     height: 130,
                     width: 130,
                     decoration: BoxDecoration(
                       
                      
                       shape: BoxShape.circle,
                       image: DecorationImage(
                         image: AssetImage("assests/images.jpg")
                       )
                     ),
                   ),
                   Container(
                     //width: 30,
                     decoration: BoxDecoration(
                       color:  Colors.grey.withOpacity(0.40),
                       shape: BoxShape.circle,
                       //borderRadius: BoderRadius.circular(20)
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(13.0),
                       child: Icon(Icons.settings,color: Colors.white,size: 25,),
                     ),
                   )
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(top:20),
                 child: Text("hh.com",style: TextStyle(color: Colors.white),),
               ),
               Padding(
                    padding: const EdgeInsets.only(top:20),
                 child: Row(
                   children: [
                     Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:5),
                           child: Text("74 Cal",style: TextStyle(color: Colors.white,fontSize: 25)),
                         ),
                         Padding(
                            padding: const EdgeInsets.only(top:5,left: 5),
                           child: Text("Progress",style: TextStyle(color: Colors.white)))
                       ],
                     ),
                     SizedBox(width: 20,),
                     Container(
                       height: 60,
                       width: 2,
                       color: Colors.white,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 35),
                       child: Icon(FontAwesomeIcons.stethoscope,color: Colors.white,size:50),
                     ),
                       
                     Container(
                       height: 60,
                       width: 2,
                       color: Colors.white,
                     ),
                      Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:15),
                           child: Text("276 Cal",style: TextStyle(color: Colors.white,fontSize: 25)),
                         ),
                         Padding(
                            padding: const EdgeInsets.only(top:5),
                           child: Text("Goal",style: TextStyle(color: Colors.white)))
                       ],
                     ),
                   ],
                 ),
               )
            ]
           
          ),
        ),
      
    
      
    
    );
  }
}
class CustomSClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    final Path path = new Path();
    path.lineTo(0, size.height);
    var firstEndPoint = Offset(size.width * 0.4,size.height-10);
    var firstControlpoint = Offset(size.width *0.20,size.height * 0.3);
    path.quadraticBezierTo(firstControlpoint.dx, firstControlpoint.dy,firstEndPoint.dx, firstControlpoint.dy);
    var secondEndPoint = Offset(size.width, size.height );
    var secondControlPoint = Offset(size.width , size.height );
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}