import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicationTile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.bubble_chart,
              color: Theme.of(context).accentColor,
            ),
            Text('Ritalin'),
            Text('Treating ADHD'),
          ],
        ),
        onTap: () {
          _showModalBottomSheet(context);
        },
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
          height: MediaQuery.of(context).size.height * .85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(25.0),
              topRight: const Radius.circular(25.0),
            ),
          ),
          child: Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        EntryContainer('Medication:'),
                        Spacer(),
                        EntryContainer('Ritalin'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        EntryContainer('Date Prescribed:'),
                        Spacer(),
                        EntryContainer('7/18/20'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        EntryContainer('Size:'),
                        Spacer(),
                        EntryContainer('50 mg / Day'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        EntryContainer('Length:'),
                        Spacer(),
                        EntryContainer('Two Weeks'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class EntryContainer extends StatelessWidget {
  final String text;

  EntryContainer(this.text);

  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      //width: 150,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(10.0),
          topRight: const Radius.circular(10.0),
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ),
      ),
    );
  }
}
