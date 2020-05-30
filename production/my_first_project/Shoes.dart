import 'package:flutter/material.dart';

class Shoes extends StatelessWidget {
  final String image;

  const Shoes({Key key, this.image}) : super(key: key);

  @override
  _ShoesState createState() => _ShoesState();

}
class _ShoesState extends State<Shoes>
{
  @overreide
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
            tag: red,
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
                        padding: EdgeInserts.symmetric(horizontal: 20,vertical: 50),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigation.pop(context);
                              },
                              cild: Container(
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
                      )
                      Positioned(
                        bottom: 0,
                        left: 0,
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        child: Container(
                          padding: EdgeInserts.all(20),
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

                            children: <Widget>[
                              Text("Snikers", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                              SizedBox(height: 25,),
                              Text("Size", style: TextStyle(color: Colors.white, fontSize: 20),),
                              SizedBox(height: 10,),
                              Row(
                                Childern: <Widget>[
                                  Container(
                                    width: 40,
                                    height: 40,
                                    margin: EdgeInserts.only(right: 20),
                                    child: Center(
                                      Text('40', style: TextStyle(color: Colors.white),)
                                    ),
                                  )
                                ]
                              )
                            ]
                          )
                        )
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
