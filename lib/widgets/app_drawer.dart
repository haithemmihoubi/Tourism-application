import 'package:flutter/material.dart';
import 'package:traveller/screens/filters_screen.dart';

class AppDrawer extends StatelessWidget {
  ListTile buildListTile(IconData icon, String text, Function()? onTapLink) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onTap:onTapLink,
      trailing:Icon(Icons.arrow_forward_ios) ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(40),
              alignment: Alignment.center,
              color: Colors.lightBlueAccent,
              child:Text('Traveller',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20))
            ),
            SizedBox(
              height: 20,
            ),
buildListTile(Icons.card_travel,'Trip' , () => Navigator.of(context).pushReplacementNamed('/') ) ,
            SizedBox(
              height: 20,
            ),buildListTile(Icons.filter_list,'Filter' , () => Navigator.of(context).pushReplacementNamed(FilterScreen.screenRoute) ) ,

          ],
        ),
      ),
    );
  }
}
