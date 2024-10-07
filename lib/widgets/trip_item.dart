import 'package:flutter/material.dart';
import 'package:sixthy/models/trip.dart';
import '../screens/trip_detail_screen.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  const TripItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.tripType,
    required this.season,
  });

  String get seasonText {
    switch (season) {
      case Season.Winter:
        return 'Winter';
      case Season.Spring:
        return 'Frühling';
      case Season.Summer:
        return 'Sommer';
      case Season.Autumn:
        return 'Herbst';
      default:
        return 'Unbekannt';
    }
  }

  String get tripTypeText {
    switch (tripType) {
      case TripType.Exploration:
        return 'Erkundung';
      case TripType.Recovery:
        return 'Erholung';
      case TripType.Activities:
        return 'Aktivitäten';
      case TripType.Therapy:
        return 'Therapie';
      default:
        return 'Unbekannt';
    }
  }

  void selectTrip(BuildContext context) {
    Navigator.of(context).pushNamed(TripDetailScreen.screenRoute,
    arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  height: 250,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: [0.6, 1],
                    ),
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.today, color: Colors.yellow),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration Tage'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.sunny, color: Colors.yellow),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasonText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.family_restroom, color: Colors.yellow),
                      SizedBox(
                        width: 6,
                      ),
                      Text(tripTypeText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
