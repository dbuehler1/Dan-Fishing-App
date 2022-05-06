import 'package:flutter/material.dart';
import 'Models.dart';
import 'FishFacts.dart';
import 'HomePage.dart';
import 'FishingSpots.dart';
import 'DataPopulate.dart';

class FishingProductsPage extends StatelessWidget {
  const FishingProductsPage({Key? key, required this.title}) : super(key: key);
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
                    1: FlexColumnWidth(7),
                  },
                  children: [
                    TableRow(children: [
                      Container(
                          color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Product'),
                          )),
                      Container(
                          color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Price'),
                          )),
                    ]),
                    for (FishingProduct product in fishingProducts)
                      TableRow(children: [

                        Container(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(product.product),
                            )),
                        Container(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('\$' + product.price.toString()),
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