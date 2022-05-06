import 'package:flutter/material.dart';
import 'Models.dart';
import 'FishFacts.dart';
import 'FishingSpots.dart';
import 'FishingProducts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fish App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomePage(title: 'Dan\'s Fishing Guide (Flutter App)'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: ButtonBar(
              children: <Widget>[
                Column(
                  children: <Widget> [
                    Image.asset('assets/images/fishing.jpg'),
                  ],
                ),
                ButtonTheme(
                  minWidth: 400.0,
                  child: RaisedButton(
                    child: Text('View Fish Facts'),
                    color: Colors.yellow,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const FishFactsPage(title: 'Fish Facts');
                      }));
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 400.0,
                  child: RaisedButton(
                    child: Text('View Top Lures'),
                    color: Colors.yellow,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const FishingProductsPage(
                            title: 'Fishing Lures');
                      }));
                    },
                  ),
                ),
                ButtonTheme(
                    minWidth: 400.0,
                    child: RaisedButton(
                      child: Text('View Fishing Spots'),
                      color: Colors.yellow,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const FishingSpotsPage(title: 'Fishing Spots');
                        }));
                      },
                    ))
              ],
            ),
          )

        ],
      )),
    );
  }
}










