import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

List<PieChartSectionData> generatePopulationData() {
  return [
    PieChartSectionData(
      color: Colors.orange,
      value: 40, // Replace with the population of the first country
      title: '40%', // Replace with the name of the first country
      radius: 40,
      titleStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
      ),
    ),
    PieChartSectionData(
      color: Colors.indigo,
      value: 20, // Replace with the population of the first country
      title: '20%', // Replace with the name of the first country
      radius: 40,
      titleStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
      ),
    ),
    PieChartSectionData(
      color: Colors.green,
      value: 30, // Replace with the population of the second country
      title: '30%', // Replace with the name of the second country
      radius: 40,
      titleStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
      ),
    ),
    PieChartSectionData(
      color: Colors.pink,
      value: 10, // Replace with the population of the third country
      title: '10%', // Replace with the name of the third country
      radius: 40,
      titleStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
      ),
    ),
  ];
}


class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}


class _AnalyticsPageState extends State<AnalyticsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body:
       Column(

         children: [

           // Pie chart
           Container(
             alignment: Alignment.topCenter,
             child: AspectRatio(
               aspectRatio: 1,
               child: PieChart(
                 PieChartData(
                   sections: generatePopulationData(),
                   borderData: FlBorderData(show: false),
                   centerSpaceRadius: 90,
                   sectionsSpace: 0,
                 ),
               ),
             ),
           ),
           Row(
             children: [

               //BILLS
               Container(
                 child: Image.asset("assets/images/icons8-bill-64.png"),
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text("Bills",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.white),),
                   //bar here
                   SimpleAnimationProgressBar(
                       height: 10,
                       width: 300,
                       backgroundColor: Colors.grey.shade800,
                       foregrondColor: Colors.purple,
                       ratio: 0.4,
                       direction: Axis.horizontal,
                       curve: Curves.fastLinearToSlowEaseIn,
                       duration: const Duration(seconds: 3),
                       borderRadius: BorderRadius.circular(10),
                       gradientColor: const LinearGradient(
                       colors: [Colors.pink, Colors.purple]),
                       boxShadow: const [
                         BoxShadow(
                           color: Colors.indigo,
                           offset: Offset(
                             5.0,
                             5.0,
                           ),
                           blurRadius: 10.0,
                           spreadRadius: 2.0,
                         ),
                         ],
                   )
                 ],
               ),

             ],
           ),

//CLOTHES
           Row(
             children: [
               Image.asset("assets/images/icons8-bill-64.png"),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text("Clothes",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.white),),
                   //bar here
                   SimpleAnimationProgressBar(
                       height: 10,
                       width: 300,
                       backgroundColor: Colors.grey.shade800,
                       foregrondColor: Colors.purple,
                       ratio: 0.2,
                       direction: Axis.horizontal,
                       curve: Curves.fastLinearToSlowEaseIn,
                       duration: const Duration(seconds: 3),
                       borderRadius: BorderRadius.circular(10),
                       gradientColor: const LinearGradient(
                       colors: [Colors.pink, Colors.purple]),
                       boxShadow: const [
                         BoxShadow(
                           color: Colors.indigo,
                           offset: Offset(
                             5.0,
                             5.0,
                           ),
                           blurRadius: 10.0,
                           spreadRadius: 2.0,
                         ),
                         ],
                   )
                 ],
               ),

             ],
           ),


//FOOD
           Row(
             children: [
               Image.asset("assets/images/icons8-bill-64.png"),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text("Food",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.white),),
                   //bar here
                   SimpleAnimationProgressBar(
                       height: 10,
                       width: 300,
                       backgroundColor: Colors.grey.shade800,
                       foregrondColor: Colors.purple,
                       ratio: 0.3,
                       direction: Axis.horizontal,
                       curve: Curves.fastLinearToSlowEaseIn,
                       duration: const Duration(seconds: 3),
                       borderRadius: BorderRadius.circular(10),
                       gradientColor: const LinearGradient(
                       colors: [Colors.pink, Colors.purple]),
                       boxShadow: const [
                         BoxShadow(
                           color: Colors.indigo,
                           offset: Offset(
                             5.0,
                             5.0,
                           ),
                           blurRadius: 10.0,
                           spreadRadius: 2.0,
                         ),
                         ],
                   )
                 ],
               ),

             ],
           ),

//OTHERS
           Row(
             children: [
               Image.asset("assets/images/icons8-bill-64.png"),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text("Others",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.white),),
                   //bar here
                   SimpleAnimationProgressBar(
                       height: 10,
                       width: 300,
                       backgroundColor: Colors.grey.shade800,
                       foregrondColor: Colors.purple,
                       ratio: 0.1,
                       direction: Axis.horizontal,
                       curve: Curves.fastLinearToSlowEaseIn,
                       duration: const Duration(seconds: 3),
                       borderRadius: BorderRadius.circular(10),
                       gradientColor: const LinearGradient(
                       colors: [Colors.pink, Colors.purple]),
                       boxShadow: const [
                         BoxShadow(
                           color: Colors.indigo,
                           offset: Offset(
                             5.0,
                             5.0,
                           ),
                           blurRadius: 10.0,
                           spreadRadius: 2.0,
                         ),
                         ],
                   )
                 ],
               ),

             ],
           )
         ],
       ),
    );
  }
}