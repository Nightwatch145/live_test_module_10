import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget
{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 95,
        centerTitle: true,
        title: const Text('Profile'),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          color: Colors.black
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50,top: 30),
              child: Container(
                width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black,
                    image: const DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/3910065/pexels-photo-3910065.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50,right: 50, top: 9),
              child: Text('Matilda Brown', style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50,right: 50),
              child: Text('matildabrown@gmail.com', style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              )),
            ),
           const Wrap(
             alignment: WrapAlignment.center,
             children: [
               Padding(
                 padding: EdgeInsets.only(left: 50,top: 19, right: 50),
                 child: Text('Meet Matilda Brown, the epitome of a modern influence. With an infectious smile and an adventurous spirit, Sophia has captivated thousands of followers on social media platforms worldwide. Born and raised in the vibrant city of Miami, she effortlessly blends her Cuban heritage with a cosmopolitan flair.Matilda journey into the world of social media began during her college years, where she studied marketing and developed a keen eye for trends and aesthetics.'
                     , style: TextStyle(
                   fontSize: 17,
                   fontWeight: FontWeight.w400,
                   color: Colors.black,
                 ),
                   textAlign: TextAlign.center,
                 ),
               ),
             ],
           )
          ],
        ),

    );
  }

}