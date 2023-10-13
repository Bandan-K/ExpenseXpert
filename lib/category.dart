import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  final darkBgColor = Colors.black87;
  final lightBgColor = Colors.white;

  final darkFontColor = Colors.white;
  final lightFontColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBgColor,
        foregroundColor: darkFontColor,
        leading: const Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        title: const Text('Add Categories'),
      ),
      backgroundColor:darkBgColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Food Section
                Column(
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 57,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/food.png'),
                          backgroundColor: Colors.black87,
                          radius: 55,
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Food', style: TextStyle(color: darkFontColor, fontSize: 25),),
                  ],
                ),
                // Social Life Section
                Column(
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 57,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/make-friends.png'),
                          backgroundColor: Colors.black87,
                          radius: 55,
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Social Life', style: TextStyle(color: darkFontColor, fontSize: 25),),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Shopping Section
                Column(
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 57,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/cart.png'),
                          backgroundColor: Colors.black87,
                          radius: 55,
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Shopping', style: TextStyle(color: darkFontColor, fontSize: 25),),
                  ],
                ),
                // Pets Section
                Column(
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 57,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/pets.png'),
                          backgroundColor: Colors.black87,
                          radius: 55,
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Pets', style: TextStyle(color: darkFontColor, fontSize: 25),),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Travelling Section
                Column(
                  children: [
                    // Travelling Section
                    const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 57,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/travel-luggage.png'),
                          backgroundColor: Colors.black87,
                          radius: 55,
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Travelling', style: TextStyle(color: darkFontColor, fontSize: 25),),
                  ],
                ),
                // Fashion Section
                Column(
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 57,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/fashion.png'),
                          backgroundColor: Colors.black87,
                          radius: 55,
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Fashion', style: TextStyle(color: darkFontColor, fontSize: 25),),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    // Gifts Section
                    const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 57,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/surprise.png'),
                          backgroundColor: Colors.black87,
                          radius: 55,
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Gifts', style: TextStyle(color: darkFontColor, fontSize: 25),),
                  ],
                ),
                Column(
                  children: [
                    // Health Section
                    const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 57,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/icons8-health-64.png'),
                          backgroundColor: Colors.black87,
                          radius: 55,
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Health', style: TextStyle(color: darkFontColor, fontSize: 25),),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}