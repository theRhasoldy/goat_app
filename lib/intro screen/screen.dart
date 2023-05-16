import 'package:flutter/material.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/intro%20screen/page1.dart';
import 'package:goat_app/intro%20screen/page2.dart';
import 'package:goat_app/intro%20screen/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  PageController _controller=PageController();
  bool onLastPage=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage=(index==2);
              });
            },
            children: [
              page1(),
              page2(),
              page3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.8),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap:(){
                    _controller.jumpToPage(2);
                  },
                  child:Text('skip'),
                ),
                SmoothPageIndicator(controller: _controller,count: 3),
                onLastPage
                    ? GestureDetector(
                    onTap:() {
                      _controller.nextPage(

                          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>
                              const Home()));
                      },

                    child:Text('done')
                )

                    : GestureDetector(
                  onTap:() {
                    _controller.nextPage(

                        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                  },

                  child:Text('next'),
                ),


              ],
            ),
          ),

        ],
      ),
    );

  }
}
