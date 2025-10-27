import 'package:agrilegeey/navigation.dart';
import 'package:agrilegeey/pages/detail-produit.dart';
import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
       child: Stack(
         alignment: Alignment.center,
         children: [
           Container(
             margin: EdgeInsets.only(bottom: 10),
             child: ListView(
               // mainAxisAlignment: MainAxisAlignment.center,
               //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageSection,
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 280,
                    child: Column(
                      children: [
                        Hero,
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                              // Navigation()
                              DetailProduit()
                          ));
                        },
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 40,right: 40),
                              child: Text("Get Started",style: TextStyle(fontSize: 18,fontFamily: 'Sora',fontWeight: FontWeight.w300,color: Colors.white,),),
                            )
                        )
                      ],
                    ),
                  ),

                ],
             ),
           )
         ],
       ),
      ),
    );

  }
}

Widget ImageSection = Container(
  // margin: EdgeInsets.only(bottom: 10),
    child: Stack(
      children: [
        Image.asset('assets/images/Image.png',fit: BoxFit.cover,width: double.infinity,),
      ],
    )
);

Widget Hero =  Container(

  // color: Colors.black,
  child: Column(
    children: [
      Text("Fall in Love with Coffee in Blissful Delight!",textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,fontFamily: 'Sora',fontSize: 28,fontWeight: FontWeight.bold)
      ),
      SizedBox(height: 20,),
      Text("Welcome to our cozy coffee corner, where every cup is a delightful for you.",textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white,fontFamily: 'Sora',fontWeight: FontWeight.bold,fontSize: 14),
      ),
      SizedBox(height: 6,),
    ],
  ),
);

