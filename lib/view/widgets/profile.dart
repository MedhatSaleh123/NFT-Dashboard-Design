import 'package:ecommerce/model/recent_model.dart';
import 'package:ecommerce/view/widgets/list.dart';
import 'package:ecommerce/view/widgets/profile_items.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'header_profile.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
      color: Color(0xff0B0D21),
      borderRadius: BorderRadius.circular(7), 
      border: Border.all(color: const Color.fromARGB(255, 63, 140, 185),width: 1)
     ),
      child: ListView(
        children: [
          HeaderProfile(),
          ProfileItems(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'Your Balance',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: Container(
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      width: 1.5,
                      color: const Color.fromARGB(255, 33, 66, 209))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("images/profile/3.png")),
                    SizedBox(
                      width: 5,
                    ),
                    Text('4.668 ETH'),
                    Spacer(),
                    Text(
                      'Add  >',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Revenue'), Text('This Month  >')],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 2,
            child: Container(
              child: BarChart(
                BarChartData(
                  //  backgroundColor: Colors.green,
                  barGroups: [
                    BarChartGroupData(
                        x: 1, barRods: [BarChartRodData(toY: .3)]),
                    BarChartGroupData(
                        x: 2, barRods: [BarChartRodData(toY: .6)]),
                    BarChartGroupData(
                        x: 3, barRods: [BarChartRodData(toY: 1.5)]),
                    BarChartGroupData(
                        x: 4, barRods: [BarChartRodData(toY: .9)]),
                    BarChartGroupData(x: 5, barRods: [BarChartRodData(toY: 2)]),
                  ],
                  titlesData: FlTitlesData(
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                ),

                duration: Duration(milliseconds: 150), // Optional
                curve: Curves.linear, // Optional
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Recent Activity'), Text('See All ->')],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        Container(height: 200, 
        child: ListView.builder(
          scrollDirection: Axis.vertical, 
          physics: NeverScrollableScrollPhysics(), 
          itemCount: 2, 

          itemBuilder: (context, index) {
          return   CustomList(
            recent: AppList.recent[index],
          );
        },),
        )
        ],
      ),
    );
  }
}

class CustomList extends StatelessWidget {
  const CustomList({
    super.key, required this.recent,
  });
final RecentModel recent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        height: 70,
        width: 400,
        decoration: BoxDecoration(
            color: Color(0xff212760),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Image.asset(recent.image),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(recent.number),
                SizedBox(
                  height: 5,
                ),
                GradientText(
                  recent.name,
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                  colors: [
                    const Color.fromARGB(255, 96, 230, 198),
                    const Color.fromARGB(255, 101, 54, 196),
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  'New Bid',
                  style: TextStyle(
                    fontSize: 10.0,
            color: const Color.fromARGB(255, 13, 184, 207)
    
                  ),
                ),
                Text(
                recent.time,
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),  SizedBox(
                  height: 5,
                ),
                Text('3m ago',
        style: TextStyle(
            fontSize: 7.0, 
            color: const Color.fromARGB(255, 13, 184, 207)
        ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
