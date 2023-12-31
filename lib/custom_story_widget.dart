import 'package:flutter/material.dart';

import 'custom_avater.dart';
class CustomStoryWidget extends StatelessWidget {
  const CustomStoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
          if(index == 0){
            return  Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Column(
                children: [
                  Stack(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network("https://maruf136.000webhostapp.com/image/maruf.jpeg",width: 120,height:120,fit: BoxFit.fill)
                      ),
                      Opacity(
                        opacity: 0.3, // Adjust the opacity level as needed
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:Colors.black
                          ),
                          width: 120,
                          height: 120,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CustomCircularAvater(),
                      ),
                      Positioned(
                          top:0,
                          left:0,
                          right:0,
                          bottom:0,
                          child: Center(child: Image.asset("assets/images/addw.png",width: 30,height: 30,))
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("You",style: TextStyle(fontWeight: FontWeight.w500),),
                  )
                ],
              ),
            );
          }
          return  Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network("https://maruf136.000webhostapp.com/image/maruf.jpeg",width: 120,height:120,fit: BoxFit.fill)
                    ),
                    const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: CustomCircularAvater(),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Maruf Hasan",style: TextStyle(fontWeight: FontWeight.w500),),
                )
              ],
            ),
          );
        }
    );
  }
}