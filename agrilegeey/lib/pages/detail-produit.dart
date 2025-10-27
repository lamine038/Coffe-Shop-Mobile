import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DetailProduit extends StatelessWidget {
  const DetailProduit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Bar
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSection,
              SizedBox(height: 40,),
              IconeSection,
              SizedBox(height: 9,),
              Trait,
              SizedBox(height: 15,),
              TextSection,
              SizedBox(height: 28,),
              Taille,
              // Price
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 30,top: 30),
        decoration: BoxDecoration(
            color: Colors.black12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
        ),
        height: 130,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Price",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200,fontFamily: 'Sora'),),
                SizedBox(height: 5,),
                Text("233 %",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Sora'),)
              ],
            ),
           ElevatedButton(onPressed: (){
                print("object");
              },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 40,right: 40,top: 15,bottom: 15),
                      child: Text("Add to cart",style: TextStyle(fontSize: 16,fontFamily: 'Sora',fontWeight: FontWeight.w300,color: Colors.white,)),
                  )
              ),
          ],
        ),
      ),
    );
  }
}


Widget Bar = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 100),
          child: Text("Detail",style: TextStyle(fontFamily: 'Sora',fontWeight: FontWeight.bold),),
        ),
        Container(
          child: Icon(Icons.favorite,size: 30,),
        )
      ],
    )
);

Widget ImageSection = Container(
  child: Image.asset('assets/images/2.png',width: double.infinity,fit: BoxFit.cover,),
);

Widget IconeSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Caffe Mocha",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300,fontFamily: 'Sora'),),
              SizedBox(height: 8,),
              Text("Ice/Hot",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Sora')),
              SizedBox(height: 8,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star,color: Colors.amber,size: 30,),
                  SizedBox(width: 10,),
                  Text("4.5",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Sora'),),
                  SizedBox(width: 10,),
                  Text("(230)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,fontFamily: 'Sora'),),
                ],
              )
            ]
        ),
        Container(
          child: Row(
            children: [
              Image.asset('assets/images/i2.png',),
              SizedBox(width: 10,),
              Image.asset('assets/images/i3.png'),
              SizedBox(width: 10,),
              Image.asset('assets/images/i1.png'),
              ]
          ),
        )

      ],
    ),
);

Widget Trait = Divider(
  color: Colors.grey,     // couleur du trait
  thickness: 1,           // épaisseur du trait
  indent: 20,             // marge à gauche
  endIndent: 20,          // marge à droite
);

Widget TextSection = Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Description",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Sora'),),
      SizedBox(height: 10,),
      Container(
        child: RichText(text: TextSpan(
          children: [
            const TextSpan(
              text:
              "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..  ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontFamily: 'Sora',
              ),
            ),
            TextSpan(
              text: "Read More",
              style: const TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("Voir plus cliqué !");
                  // tu peux ici faire Navigator.push(...) vers une page détails
                },
            ),
          ]
        )),
      )
    ],
  ),
);

Widget Taille = Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Size",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Sora'),),
      SizedBox(height: 20,),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 50,top: 10,bottom: 10,right: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black12,  // couleur de la bordure
                  width: 1,
                  style: BorderStyle.solid, // type de bordure
                  strokeAlign: BorderSide.strokeAlignCenter, // épaisseur
                ),
              ),
              child: Text('S',style: TextStyle(color: Colors.black,fontFamily: 'Sora',fontWeight: FontWeight.bold,fontSize: 14))
            ),
            Container(
                padding: EdgeInsets.only(left: 50,top: 10,bottom: 10,right: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black12,  // couleur de la bordure
                    width: 1,
                    style: BorderStyle.solid, // type de bordure
                    strokeAlign: BorderSide.strokeAlignCenter, // épaisseur
                  ),
                ),
                child: Text('M',style: TextStyle(color: Colors.black,fontFamily: 'Sora',fontWeight: FontWeight.bold,fontSize: 14))
            ),
            Container(
                padding: EdgeInsets.only(left: 50,top: 10,bottom: 10,right: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,  // couleur de la bordure
                    width: 1,
                    style: BorderStyle.solid, // type de bordure
                    strokeAlign: BorderSide.strokeAlignCenter, // épaisseur
                  ),
                ),
                child: Text('L',style: TextStyle(color: Colors.black,fontFamily: 'Sora',fontWeight: FontWeight.bold,fontSize: 14),)
            ),
          ],
        )
      )
    ],
  ),
);

Widget Price =  Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Accueil"),
          Text("Produits"),
          Text("Profil"),
        ],
      ),
    )
);