import 'package:flutter/material.dart';
import 'package:projectone/page1.dart';
import 'package:projectone/page2.dart';
import 'package:projectone/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageviewDemo extends StatelessWidget {
  final _controller = PageController();
  PageviewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
     
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            SizedBox(
              height: 500,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Page1(),
                  Page2(),
                  Page3(),
                ],
              ),
            ),
            ElevatedButton(onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.grey)
            ),
             child:Text("just a button") ,),

            SmoothPageIndicator(controller: _controller ,
             count: 3,
             effect: JumpingDotEffect(
              dotColor: Colors.grey,
              dotHeight: 12,
              dotWidth: 12,
              activeDotColor: Colors.black

             ),)
          ],
        ),
          
      
    );
  }
}
