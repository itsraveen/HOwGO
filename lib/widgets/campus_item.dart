import 'package:flutter/material.dart';
import '../screens/faculty_screen.dart';

class CampusItem extends StatelessWidget {
  final String title;
  final String image;

  CampusItem(this.title, this.image);

  void selectCampus(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      FacultyScreen.routeName,
      arguments: {
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = double.infinity;
    var height = MediaQuery.of(context).size.height / 3 - 80;
    return InkWell(
      onTap: () => selectCampus(context),
      splashColor: Colors.amber.shade200,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(0),
        margin: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                image,
                height: height,
                width: width,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                width: 200,
                color: Colors.black54,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
