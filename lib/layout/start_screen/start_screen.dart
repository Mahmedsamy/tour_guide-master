import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../flutter_map/flutter_map_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/image1.jpg',
      'assets/image2.jpg',
      'assets/image3.jpg',
      'assets/image4.jpg',
      'assets/image5.jpg',
    ];


    final List<Widget> imageSliders = imgList
        .map((item) => Container(
          child: Container(
            margin:  EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius:  BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                     Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                    //Text(item),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        // child: Text(
                        //   'No. ${imgList.indexOf(item)} image',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 20.0,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
        .toList();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.brown,
              ),
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(70.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const Text(
                          // language!.home
                          'احاديث',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white70,
                          ),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/ather logo.png',
                          height: 100.0,
                          width: 100.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(70.0),
                child: Column(
                  children: [
                    Container(
                        child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        initialPage: 2,
                        autoPlay: true,
                      ),
                      items: imageSliders,
                    )),

                    // Container(
                    //   height: 400,
                    //   width: 400,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       width: 5,
                    //       color: Colors.brown,
                    //     ) ,
                    //     borderRadius: BorderRadius.circular(20.0),
                    //     color: Colors.grey[300],
                    //   ),
                    //   child: const Padding(
                    //     padding: EdgeInsets.all(8.0),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.end,
                    //       children: [
                    //         Text(
                    //           'السؤال الذي يُطرح دائما لفهم دوافع الهجرة النبوية هو لماذا هاجر الرسول صلى الله عليه وسلم من مكة بلده ومسقط رأسه وسط أهله وذويه إلى مكان غير معلوم؟ ما هي أسباب ودوافع هذه الهجرة أو هذا الانتقال',
                    //           style: TextStyle(
                    //             fontSize: 20.0,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //         Text('اضطهاد قريش للمسلمين في مكة',
                    //             style: TextStyle(
                    //               fontWeight: FontWeight.bold,
                    //               fontSize: 20.0,
                    //             )),
                    //         Text(
                    //           'نشر الدعوة الاسلامية خارج مكه',
                    //           style: TextStyle(
                    //             fontSize: 20.0,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 110.0,
                    // ),

                     SizedBox(
                       height: 110,
                     ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MapLayout(
                                      title: 'Home Page',
                                    )));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'البدء',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
