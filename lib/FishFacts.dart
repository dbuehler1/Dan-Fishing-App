import 'package:flutter/material.dart';
import 'Models.dart';
import 'HomePage.dart';
import 'FishingSpots.dart';
import 'FishingProducts.dart';
import 'DataPopulate.dart';

class FishFactsPage extends StatelessWidget {
  const FishFactsPage({Key? key, required this.title}) : super(key: key);
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
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ButtonTheme(
                    child: RaisedButton(
                      child: Text('Home'),
                      color: Colors.yellow,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return const HomePage(title: 'Dan\'s Fishing Guide');
                            }));
                      },
                    ),
                  ),
                  ButtonTheme(
                    child: RaisedButton(
                      child: Text('Lures'),
                      color: Colors.yellow,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return const FishingProductsPage(title: 'Fishing Lures');
                            }));
                      },
                    ),
                  ),
                  ButtonTheme(
                      child: RaisedButton(
                        child: Text('Spots'),
                        color: Colors.yellow,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const FishingSpotsPage(title: 'Fishing Spots');
                          }));
                        },
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Table(
                  columnWidths: {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(4),
                  },
                  children: [
                    TableRow(children: [
                      Container(
                          color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Fish Name'),
                          )),
                      Container(
                          color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Fish Sizes'),
                          )),
                      Container(
                          color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Description'),
                          )),
                    ]),
                    for (FishFact fish in fishFacts)
                      TableRow(children: [

                        Container(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(fish.fishName),
                            )),
                        Container(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(fish.fishSizes),
                            )),
                        Container(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(fish.description),
                            )),

                      ])
                  ],
                ),
              )
            ],
          )),
    );
  }
}