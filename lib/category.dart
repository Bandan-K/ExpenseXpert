import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key, required bool isSelected}) : _isSelected = isSelected;
  final bool _isSelected;
  @override
  State<CategoryPage> createState() => _CategoryPageState(_isSelected);
}

class _CategoryPageState extends State<CategoryPage> {

  final darkBgColor = Colors.black87;
  final lightBgColor = Colors.white;

  final darkFontColor = Colors.white;
  final lightFontColor = Colors.black;
  final bool _isSelected;
  _CategoryPageState(this._isSelected);

  var darkColor = Colors.black;
  var lightColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: _isSelected? lightColor : darkColor,
        backgroundColor: _isSelected? darkColor : lightColor,
        leading: const Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
            icon: Icon(
              Icons.add,
              color: _isSelected? darkColor : lightColor,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        title: const Text('Add Categories'),
      ),
      backgroundColor:_isSelected? darkColor : lightColor,
      body: SingleChildScrollView(
        child: Center(
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
                      CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 57,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/food.png'),
                            backgroundColor: _isSelected? darkColor : lightColor,
                            radius: 55,
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Food', style: TextStyle(color: _isSelected? lightColor : darkColor, fontSize: 25),),
                    ],
                  ),
                  // Social Life Section
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 57,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/make-friends.png'),
                            backgroundColor: _isSelected? darkColor : lightColor,
                            radius: 55,
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Social Life', style: TextStyle(color: _isSelected? lightColor : darkColor, fontSize: 25),),
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
                      CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 57,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/cart.png'),
                            backgroundColor: _isSelected? darkColor : lightColor,
                            radius: 55,
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Shopping', style: TextStyle(color: _isSelected? lightColor : darkColor, fontSize: 25),),
                    ],
                  ),
                  // Pets Section
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 57,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/pets.png'),
                            backgroundColor: _isSelected? darkColor : lightColor,
                            radius: 55,
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Pets', style: TextStyle(color: _isSelected? lightColor : darkColor, fontSize: 25),),
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
                      CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 57,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/travel-luggage.png'),
                            backgroundColor: _isSelected? darkColor : lightColor,
                            radius: 55,
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Travelling', style: TextStyle(color: _isSelected? lightColor : darkColor, fontSize: 25),),
                    ],
                  ),
                  // Fashion Section
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 57,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/fashion.png'),
                            backgroundColor: _isSelected? darkColor : lightColor,
                            radius: 55,
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Fashion', style: TextStyle(color: _isSelected? lightColor : darkColor, fontSize: 25),),
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
                      CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 57,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/surprise.png'),
                            backgroundColor: _isSelected? darkColor : lightColor,
                            radius: 55,
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Gifts', style: TextStyle(color: _isSelected? lightColor : darkColor, fontSize: 25),),
                    ],
                  ),
                  Column(
                    children: [
                      // Health Section
                      CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 57,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/icons8-health-64.png'),
                            backgroundColor: _isSelected? darkColor : lightColor,
                            radius: 55,
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Health', style: TextStyle(color: _isSelected? lightColor : darkColor, fontSize: 25),),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}