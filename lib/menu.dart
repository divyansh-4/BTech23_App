import 'package:flutter/material.dart';
class menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/yellowRectangle.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(

                child:const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('MENU',style: TextStyle(fontSize: 81,color: Colors.black,fontWeight: FontWeight.bold),),

                  ],
                )
              ),


              Align(

                alignment: Alignment.centerLeft,


                  child: Container(
                    margin: EdgeInsets.only(left: 15,top: 3),
                    child: Image.asset( 'assets/images/schedule.png')
                  )
              ),

              Align(

                  alignment: Alignment.centerRight,


                  child: Container(
                      margin:const  EdgeInsets.only(right: 15),
                      child: Image.asset( 'assets/images/club.png')
                  )
              ),

              Align(

                  alignment: Alignment.centerLeft,


                  child: Container(
                      margin:const EdgeInsets.only(left: 15),
                      child: Image.asset( 'assets/images/vtour.png')
                  )
              ),

              Align(

                  alignment: Alignment.centerRight,


                  child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: Image.asset( 'assets/images/contact.png')
                  )
              ),

              Align(

                  alignment: Alignment.centerLeft,


                  child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text("Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
                  )
              ),

              Align(

                  alignment: Alignment.centerLeft,


                  child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text("About Us",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
                  )
              ),

              Align(

                  alignment: Alignment.centerLeft,


                  child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text("Location",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
                  )
              ),

              Align(

                  alignment: Alignment.centerLeft,


                  child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text("FAQs",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
                  )
              ),
            ],
          ),
        ),


      ),
    );

  }
  
}