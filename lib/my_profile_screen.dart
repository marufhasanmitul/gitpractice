import 'package:flutter/material.dart';
class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text("My Profile",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                    radius: 40,
                    backgroundImage:NetworkImage("https://maruf136.000webhostapp.com/image/maruf.jpeg"),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Maruf Hasan",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                    const SizedBox(height: 5,),
                    const Text("user Name",style: TextStyle(color: Colors.grey),),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        RichText(
                            text:const TextSpan(
                              text: "59 ",
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: "Post",style: TextStyle(color: Colors.grey)
                                )
                              ]
                            )
                        ),
                        const SizedBox(width: 10,),
                        RichText(
                            text:const TextSpan(
                                text: "•125 ",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: " following",style: TextStyle(color: Colors.grey)
                                  )
                                ]
                            )
                        ),
                        const SizedBox(width: 10,),
                        RichText(
                            text:const TextSpan(
                                text: "• 850 ",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: "follower",style: TextStyle(color: Colors.grey)
                                  )
                                ]
                            )
                        ),


                      ],
                    ),
                    const SizedBox(height: 5,),
                    Expanded(
                      child: TabBarView(
                          children: [
                            Icon(Icons.music_note),
                            Icon(Icons.music_video),
                          ]
                      ),
                    )

                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
