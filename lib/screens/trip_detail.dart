import 'package:flutter/material.dart';
import 'package:traveller/app_data.dart';

class TripDetailScreen extends StatelessWidget {
  static const id = 'tripDetail';

buildSectionTitle(titletext) {
  return  Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    alignment: Alignment.topRight,
    child: Text(titletext,style: TextStyle(color: Colors.cyan,fontSize: 20),),
  );
}



  @override
  Widget build(BuildContext context) {
    final tripId =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String tidTrip = tripId['id'];
    final selectedTrip = Trips_data.firstWhere((trip) => trip.id == tidTrip);

    return Scaffold(
      appBar: AppBar(
          title: Text(
            selectedTrip.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedTrip.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildSectionTitle('Activities')
            ,
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      
                    )),
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Card(
                      elevation: 0.3,
                        child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(selectedTrip.activities[index].toString()),
                    ));
                  },
                  itemCount: selectedTrip.activities.length,
                )), SizedBox(
              height: 15,
            ),
            buildSectionTitle('Daily program') ,  Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,

                    )),
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                       children: [
                         ListTile(
                           leading: CircleAvatar(child:Text('Day ${index+1}'),),
                           title: Text(selectedTrip.program[index].toString()),
                         ),
                         Divider(height: 60,color: Colors.cyan,),
                       ],
                      ),
                    );
                  },
                  itemCount: selectedTrip.program.length,
                )),
            SizedBox(
              height: 105,
            ),
          ],
        ),
      ),
    );
  }
}
