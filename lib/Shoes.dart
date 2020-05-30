import 'package:flutter/material.dart';
import 'Animations/FadeAnimations.dart';


class Shoes extends StatefulWidget {
  final String image;

  const Shoes({Key key, this.image}) : super(key: key);

  @override
  _ShoesState createState() => _ShoesState();

}
class _ShoesState extends State<Shoes>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
            tag: 'red',
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.image),
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
                child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                child: Icon(Icons.arrow_back_ios, color: Colors.white,)
                              )
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
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        child: FadeIn(1, Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    colors:[
                                      Colors.black.withOpacity(.9),
                                      Colors.black.withOpacity(.0),
                                    ]
                                )
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,

                                children: <Widget>[
                                FadeIn(1.2, Text("Snikers", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),)),
                                  SizedBox(height: 25,),
                                FadeIn(1.3, Text("Size", style: TextStyle(color: Colors.white, fontSize: 20),)),
                                  SizedBox(height: 10,),
                                  Row(
                                      children: <Widget>[
                                        FadeIn(1, Container(
                                          width: 40,
                                          height: 40,
                                          margin: EdgeInsets.only(right: 20),
                                          child: Center(
                                              child: Text('40', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                          ),
                                        )),
                                        FadeIn(1.41, Container(
                                          width: 40,
                                          height: 40,
                                          margin: EdgeInsets.only(right: 20),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(
                                              child: Text('42', style: TextStyle(fontWeight: FontWeight.bold),)
                                          ),
                                        )),
                                        FadeIn(1.42, Container(
                                          width: 40,
                                          height: 40,
                                          margin: EdgeInsets.only(right: 20),
                                          child: Center(
                                              child: Text('44', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                          ),
                                        )),
                                        FadeIn(1.43, Container(
                                          width: 40,
                                          height: 40,
                                          margin: EdgeInsets.only(right: 20),
                                          child: Center(
                                              child: Text('46', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                          ),
                                        )),
                                      ]
                                  ),
                                  SizedBox(height: 60),
                                  FadeIn(1.5, Container(
                                    height:50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(
                                        child: Text('Buy Now', style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),
                                  )),
                                  SizedBox(height: 30),
                                ]
                            )
                        ))
                      )
//                      Text("100\$", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ]
                )
            )
        )
      ),
    );
  }
}
