import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: const BoxDecoration(color: Color(0xffD6E4E3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0B636E)),
                ),
                const Text("Contact Us"),
                const Text("Courses"),
                const Text("Prices"),
                const Text("Home"),
                ElevatedButton(onPressed: () {}, child: const Text("Sign in")),
                // Image.network(

                //     "https://www.ekhartyoga.com/wp-content/themes/wp-bootstrap-starter/mobile-logo.svg"),
              ],
            ),
          ),
          Stack(
            fit: StackFit.loose,
            clipBehavior: Clip.none,
            // alignment: Alignment.bottomLeft,
            children: [
              ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 200,
                    maxWidth: double.infinity,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(color: Color(0xffD6E4E3)),
                  )),
              Positioned(
                top: 150,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxHeight: 100,
                              maxWidth: 100,
                            ),
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://www.ekhartyoga.com/media/image/articles/IMG_0106_small-scaled.jpg"))),
                                  ),
                                  const Text("Ypga")
                                ],
                              ),
                            )),
                        ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxHeight: 100,
                              maxWidth: 100,
                            ),
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration:
                                  const BoxDecoration(color: Colors.red),
                            )),
                      ],
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
