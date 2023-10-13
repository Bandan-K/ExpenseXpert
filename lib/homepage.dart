import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Home", style: TextStyle(color: Colors.white),),
            // actions: <Widget>[
            //   IconButton(
            //     padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            //     icon: const Icon(
            //       Icons.refresh,
            //       color: Colors.white,
            //     ),
            //     onPressed: () {
            //       // do something
            //     },
            //   )
            // ],
          ),
          backgroundColor: Colors.black,
          body: RefreshIndicator(
            child : SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [build_amount(), build_analysis(), build_day()],
            ),
          ),
          onRefresh: () async{}
          ),
    );
  }

  Widget build_day() {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month, color: Colors.white)),
            Text(
              "Today",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset("assets/images/icons8-bill-64.png",height: 80,width: 50,),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Water",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20),
                ),
                Text(
                  "Category: Bills",
                  style: TextStyle(
                      color: Colors.white54, fontSize: 18),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "-₹150",
                  style: TextStyle(
                      color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24),
                ),
                Text(
                  "01:20 p.m.",
                  style: TextStyle(
                      color: Colors.white54,fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset("assets/images/food.png",height: 80,width: 50,),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Food",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20),
                ),
                Text(
                  "Category: Food",
                  style: TextStyle(
                      color: Colors.white54, fontSize: 18),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "-₹10",
                  style: TextStyle(
                      color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24),
                ),
                Text(
                  "08:00 a.m.",
                  style: TextStyle(
                      color: Colors.white54,fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset("assets/images/fashion.png",height: 80,width: 50,),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shoes",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20),
                ),
                Text(
                  "Category: Clothes",
                  style: TextStyle(
                      color: Colors.white54, fontSize: 18),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "-₹49.99",
                  style: TextStyle(
                      color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24),
                ),
                Text(
                  "06:03 p.m.",
                  style: TextStyle(
                      color: Colors.white54,fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset("assets/images/cart.png",height: 80,width: 50,),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Grocery",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20),
                ),
                Text(
                  "Category: Shopping",
                  style: TextStyle(
                      color: Colors.white54, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              children: [
                Text(
                  "-₹80",
                  style: TextStyle(
                      color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24),
                ),
                Text(
                  "04:30 p.m.",
                  style: TextStyle(
                      color: Colors.white54,fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget build_amount() {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'This month expense',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            '₹1200.12',
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget build_analysis() {
    return Align(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: ShapeDecoration(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2.1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.purple.shade800,
                ),
                borderRadius: BorderRadius.circular(26.21),
              )),
          alignment: Alignment.center,
          width: 380,
          height: 260,
          // color: Colors.grey[400],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0,0),
                child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SimpleAnimationProgressBar(
                              height: 200,
                              width: 10,
                              backgroundColor: Colors.grey.shade800,
                              foregrondColor: Colors.purple,
                              ratio: 0.7,
                              direction: Axis.vertical,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 3),
                              borderRadius: BorderRadius.circular(10),
                              gradientColor: const LinearGradient(
                                  colors: [Colors.pink, Colors.purple]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),
                            SimpleAnimationProgressBar(
                              height: 200,
                              width: 10,
                              backgroundColor: Colors.grey.shade800,
                              foregrondColor: Colors.purple,
                              ratio: 0.3,
                              direction: Axis.vertical,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 3),
                              borderRadius: BorderRadius.circular(10),
                              gradientColor: const LinearGradient(
                                  colors: [Colors.pink, Colors.purple]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),SimpleAnimationProgressBar(
                              height: 200,
                              width: 10,
                              backgroundColor: Colors.grey.shade800,
                              foregrondColor: Colors.purple,
                              ratio: 0.6,
                              direction: Axis.vertical,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 3),
                              borderRadius: BorderRadius.circular(10),
                              gradientColor: const LinearGradient(
                                  colors: [Colors.pink, Colors.purple]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),SimpleAnimationProgressBar(
                              height: 200,
                              width: 10,
                              backgroundColor: Colors.grey.shade800,
                              foregrondColor: Colors.purple,
                              ratio: 0.2,
                              direction: Axis.vertical,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 3),
                              borderRadius: BorderRadius.circular(10),
                              gradientColor: const LinearGradient(
                                  colors: [Colors.pink, Colors.purple]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),SimpleAnimationProgressBar(
                              height: 200,
                              width: 10,
                              backgroundColor: Colors.grey.shade800,
                              foregrondColor: Colors.purple,
                              ratio: 0.7,
                              direction: Axis.vertical,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 3),
                              borderRadius: BorderRadius.circular(10),
                              gradientColor: const LinearGradient(
                                  colors: [Colors.pink, Colors.purple]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),SimpleAnimationProgressBar(
                              height: 200,
                              width: 10,
                              backgroundColor: Colors.grey.shade800,
                              foregrondColor: Colors.purple,
                              ratio: 0.9,
                              direction: Axis.vertical,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 3),
                              borderRadius: BorderRadius.circular(10),
                              gradientColor: const LinearGradient(
                                  colors: [Colors.pink, Colors.purple]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),SimpleAnimationProgressBar(
                              height: 200,
                              width: 10,
                              backgroundColor: Colors.grey.shade800,
                              foregrondColor: Colors.purple,
                              ratio: 0.4,
                              direction: Axis.vertical,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 3),
                              borderRadius: BorderRadius.circular(10),
                              gradientColor: const LinearGradient(
                                  colors: [Colors.pink, Colors.purple]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Mon",style: TextStyle(color: Colors.white),),
                              Text("Tue",style: TextStyle(color: Colors.white),),
                              Text("Wed",style: TextStyle(color: Colors.white),),
                              Text("Thu",style: TextStyle(color: Colors.white),),
                              Text("Fri",style: TextStyle(color: Colors.white),),
                              Text("Sat",style: TextStyle(color: Colors.white),),
                              Text("Sun",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        )
                      ],
                    ),
                )
              )
            ],
          )
        ),
      ),
    );
  }
}



