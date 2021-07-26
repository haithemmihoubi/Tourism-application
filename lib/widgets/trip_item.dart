import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveller/models/trip.dart';
import 'package:traveller/screens/trip_detail.dart';

class TripItem extends StatelessWidget {
  final String title;
  final String id;

  final String imageUrl;

  final int duration;

  final TripType tripType;

  final Season season;

  TripItem(
      {required this.title,
      required this.id,
      required this.imageUrl,
      required this.duration,
      required this.tripType,
      required this.season});

  get SeasonName {
    if (season == Season.Autumn) {
      return 'Autumn';
    }
    if (season == Season.Winter) {
      return 'Autumn';
    }
    if (season == Season.Spring) {
      return 'Spring';
    }
    if (season == Season.Summer) {
      return 'Summer';
    }
  }

  get trip_type {
    switch (tripType) {
      case TripType.Activities:
        return 'Activities';
        break;
      case TripType.Exploration:
        return 'Exploration';
        break;
      case TripType.Recovery:
        return 'Recovery';
        break;
      case TripType.Therapy:
        return 'Therapy';
        break;
    }
  }

  selectTrip(BuildContext context) {
    Navigator.of(context).pushNamed(TripDetailScreen.id, arguments: {'id': id});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.cyan,
      onTap: () => selectTrip(context),
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 7.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  alignment: Alignment.bottomRight,
                  height: 250,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                          stops: [
                        0.6,
                        1
                      ])),
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Colors.amber,
                      ),
                      Text("days :$duration")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.amber,
                      ),
                      Text("Season :${SeasonName}")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Colors.amber,
                      ),
                      Text("Type :$trip_type")
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
