import 'package:flutter/material.dart';
import 'package:ecommerce/models/categories.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSelected=false;
  Color selectedColor=Colors.red;
  List<bool>selected=[false,false,false,false,false];

  List<ItemCard> items=[
    ItemCard(imageUrl: 'https://www.tshirtloot.com/wp-content/uploads/2016/02/2-b.png', price: 456.99, isliked: true, quantity: 7, name: 'Leti Tote bag'),
    ItemCard(imageUrl: 'https://www.tshirtloot.com/wp-content/uploads/2017/09/1a-600x600.png', price: 256.59, isliked: true, quantity: 7, name: 'Ananse T-shirt'),
    ItemCard(imageUrl: 'https://www.tshirtloot.com/wp-content/uploads/2016/02/2-c-1-600x600.png', price: 46.99, isliked: true, quantity: 7, name: 'Leti Tote bag'),
    ItemCard(imageUrl: 'http://www.tshirtloot.com/wp-content/uploads/2017/12/st-Bio-Wash-26-300x300.png', price: 436.29, isliked: true, quantity: 7, name: 'Leti Tote bag'),
    ItemCard(imageUrl: 'https://www.tshirtloot.com/wp-content/uploads/2017/12/st-410-15-300x300.png', price: 26.95, isliked: true, quantity: 7, name: 'Leti Tote bag')
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.black,
        actions: [
          CircleAvatar(child: Text('J'),
          backgroundColor: Colors.brown,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8,left: 10),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 370,
                  decoration: BoxDecoration(
                      color: Color(0xFF808080
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 5),
                        child: Icon(Icons.search,color: Colors.black54,),
                      ),

                      Container(
                        width:200,
                        color: Color(0xFFFFF
                        ),
                        child: TextField(
                        decoration: InputDecoration(

                          border: InputBorder.none,
                            labelText: 'What are you looking for?',
                            ),
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            ),
            ),

            SizedBox(height: 10,),
            CarouselSlider(
              carouselController: CarouselController(),
                items: [
             Padding(
               padding: const EdgeInsets.only(right: 10),
               child: carouselItem("New In Stock", "30% discount for kicks above GHS 450", "images/blueshoe.png"),
             ),
             carouselItem("New In Stock", "30% discount for kicks above GHS 450", "images/black.png"),

                  Image(image: AssetImage('assetName')),
              Image(image: AssetImage('assetName')),
            ], options: CarouselOptions(

              height: 162,
              viewportFraction: 0.95,
                clipBehavior: Clip.none
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Brand"),
                TextButton(onPressed: (){}, child: Text("See all"))
              ],
            ),
            Row(children: [],),
            Container(
              width: 12,
                height: 50,
                child: Brand([
                  "images/black.png",
                  "images/black.png",
                  "images/black.png",
                  "images/black.png",
                  "images/black.png",
                ],selected)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Ariival"),
                TextButton(onPressed: (){}, child: Text("See all"))
              ],
            ),
            SectionItem(
                [
              "Jordan 4s",
              "Nike dunk Low Industrial",
               "New Balance"
                ],
                [
                  "GHS 450","GHS 560","GHS 900"
                ],
                ["Black cots","Blue Sashiko","Sandy Storm"],
                ["images/black.png","images/Imagepolp.png","images/Imagepolp.png"],
                [Color.fromRGBO(39, 39, 39, 1),
                  Color.fromRGBO(107, 191, 240, 1),
                  Color.fromRGBO(39, 191, 240, 1),
                ]) ,
           // Sections('Top Trending'),
            //Sections('Most Purchased'),
            //Sections('Fair Price'),

          ],
        ),
      ),
    );
  }
  /*Widget Sections(String title){
    return Container(
      height: 310,
      width: 400,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              MaterialButton(onPressed: (){},child: Text('View More',
              style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),
              ),),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child:
                Container(
                height: 250,
                width:  double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(

                          width: 200,
                          height: 150,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:150,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                        image: NetworkImage(items[index].imageUrl))),
                              ),
                              Text(items[index].name),
                              Text('GHS '+items[index].price.toString(),style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                      );
                    }),
              ),

            ),

        ],
      ),
    );
  }*/
  Widget carouselItem(String heading,String description,String imgName){
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
          Colors.black,
            Colors.black,
            Colors.black87,
            Colors.blueAccent,
          Colors.purple
        ],

        )
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heading,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                      height: 50,
                      width: 200,
                      child: Text(description,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  decoration: ShapeDecoration(shape:StadiumBorder(),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.grey,

                            Colors.black54
                          ])
                  ),
                  child: ElevatedButton(
                    clipBehavior: Clip.none,
                      style: ElevatedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                      onPressed: (){},
                    child: Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child: Text("Shop Now",style: TextStyle(fontSize: 14,shadows: [
                        Shadow(color: Colors.black54),
                        Shadow(color: Colors.black54),Shadow(color: Colors.black54)
                      ]),)
                  ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              right: -12,
              bottom: -20,
              child: Transform.scale(
                  scale: 1,
                  child: Image(image: AssetImage(imgName))))
        ],
      ),
    );
  }
  Widget SectionItem(List<String> heading,List<String>price,List<String>description,List<String> imgName,List<Color>colorz){
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.only(right: 30,top: 20),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  clipBehavior: Clip.none,
                width: 160,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: colorz[index]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(heading[index], style: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                            height: 20,
                            width: 120,
                            child: Text(description[index], style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                            height: 20,
                            width: 80,
                            child: Text(price[index], style: TextStyle(fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)),
                      ),
                      Icon(Icons.shopping_cart,color: Colors.white,)

                    ],
                  ),
                ),
              ),
                Positioned(
                    right: -40,
                    bottom: -10,
                    child:  Transform.scale(
                          scale: 1,
                          child: Image(image: AssetImage(imgName[index]))),
                    )
              ]
            ),
          );
        }),
    );
      }

        Widget Brand(List<String>logo,List<bool>isTapped){

      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context,index){

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: isTapped[index]?Colors.black:Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                ),
                onPressed: (){


                  setState(() {
                    if(selected[index]==false){
                      selected[index]=true;

                    }else{
                      selected[index]=false;

                    }
                    print(isTapped[index]);


                  });
                }, child: Image(image: AssetImage(logo[index]))),
          );
      },


        );
  }
}
