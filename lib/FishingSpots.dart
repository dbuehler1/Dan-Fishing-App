import 'package:flutter/material.dart';
import 'Models.dart';
import 'FishFacts.dart';
import 'HomePage.dart';
import 'FishingProducts.dart';
import 'DataPopulate.dart';

class FishingSpotsPage extends StatelessWidget {
  const FishingSpotsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(
            children: [
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
                      child: Text('Facts'),
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
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Table(
                  columnWidths: {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(7),
                  },

                  children: [
                    TableRow(children: [
                      Container(
                          color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('State'),
                          )),
                      Container(
                          color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Location'),
                          )),
                    ]),
                    for (FishingSpot spot in fishingSpots)
                      TableRow(children: [

                        Container(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(spot.state),
                            )),
                        Container(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(spot.location),
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