import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Shoes", style: TextStyle(color: Colors.black, fontSize: 25),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black,),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black,),
          ),
        ],
      ),
      body : SingleChildScrollView (
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text("All", style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Sneakers", style: TextStyle(fontSize: 17),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Football", style: TextStyle(fontSize: 17),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Soccer", style: TextStyle(fontSize: 17),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Sneakers", style: TextStyle(fontSize: 17),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem(image: 'assets/images/1.jpg',tag: 'red', context: context),
              makeItem(image: 'assets/images/2.jpg',tag: 'blue', context: context),
              makeItem(image: 'assets/images/3.jpg',tag: 'white', context: context),
            ],
          ),
        ),
      ),
    );
  }
  Widget makeItem({image, tag, context})
  {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: (){
          Route route = MaterialPageRoute(builder: (context)=> Shoes(image: image,));
          Navigator.push(context, route);
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom:20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            ),
            boxShadow:[
              BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 10,
                  offset: Offset(0,10)
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Snikers", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("Nike", style: TextStyle(color: Colors.white, fontSize: 20, ),)
                      ],
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Center(
                      child: Icon(Icons.favorite_border, size: 20),

                    ),
                  )
                ],
              ),
              Text("100\$", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
            ]
          )
        ),
      ),
    );
  }
}


