import 'package:flutter/material.dart';
import 'package:traveller/app_data.dart';
import 'package:traveller/models/trip.dart';
import 'package:traveller/widgets/trip_item.dart';

class CategoryTripScreen extends StatelessWidget {
  static const screenRoute = 'category_trips';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    final List<Trip> filteredTrips =
        Trips_data.where((element) => element.categories.contains(id)).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TripItem(
            title: filteredTrips[index].title,
            id:filteredTrips[index].id,
            imageUrl: filteredTrips[index].imageUrl,
            duration: filteredTrips[index].duration,
            season: filteredTrips[index].season,
            tripType: filteredTrips[index].tripType
          );
        },
        itemCount: filteredTrips.length,
      ),
    );
  }
}
