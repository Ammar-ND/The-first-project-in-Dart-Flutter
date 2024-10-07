import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sixthy/app_data.dart';

class TripDetailScreen extends StatelessWidget {
  static const screenRoute = '/trip-detail';

  Widget buildSectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topRight,
      child: Text(
        titleText,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
        ),
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedTrip = Trips_data.firstWhere((trip) => trip.id == tripId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedTrip.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedTrip.imageUrl, fit: BoxFit.cover),
            ),
            SizedBox(
              height: 15,
            ),
            buildSectionTitle(context, 'Aktivitäten'),
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedTrip.activities.length,
                itemBuilder: (ctx, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(selectedTrip.activities[index]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            buildSectionTitle(
              context,
              'Tagesprogramm',
            ),
            buildListViewContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('Tag ${index + 1}'),
                      ),
                      title: Text(selectedTrip.program[index]),
                    ),
                    Divider(),
                  ],
                ),
                itemCount: selectedTrip.program.length,
              ),
            ),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
