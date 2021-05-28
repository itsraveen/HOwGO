import 'package:flutter/material.dart';

import '../screens/room_screen.dart';

class BuildingItem extends StatelessWidget {
  final String title;
  final String campus;

  BuildingItem({
    @required this.title,
    @required this.campus,
  });

  void selectBuilding(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      RoomScreen.routeName,
      arguments: {
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectBuilding(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(35),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(5),
      ),
    );
  }
}
