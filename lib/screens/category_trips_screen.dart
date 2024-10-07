import 'package:flutter/material.dart';
import 'package:sixthy/app_data.dart';
import 'package:sixthy/widgets/trip_item.dart';

class CategoryTripsScreen extends StatelessWidget {
  static const screenRoute = '/category-trips';

  @override
  Widget build(BuildContext context) {
    final routeArgument = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];

    final filterTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id: filterTrips[index].id,
            title: filterTrips[index].title,
            imageUrl: filterTrips[index].imageUrl,
            duration: filterTrips[index].duration,
            tripType: filterTrips[index].tripType,
            season: filterTrips[index].season,
          );
        },
        itemCount: filterTrips.length,
      ),
    );
  }
}
