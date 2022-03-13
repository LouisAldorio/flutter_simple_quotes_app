import 'package:flutter/material.dart';
import "../data/quote.dart";

class QuoteCard extends StatelessWidget {

  // tell compiler that this i final form of data and it is not gonna change(keyword: final)
  // so it allows us to use data inside stateless widget
  final Quote quote;
  final Function delete;

  const QuoteCard({
    Key? key,
    required this.quote,
    required this.delete
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(height: 8),
            TextButton.icon(
              onPressed: () {
                delete();
              },
              label: Text("Delete Quote"),
              icon: Icon(Icons.delete)
            )
          ],
        ),
      ),
    );
  }
}