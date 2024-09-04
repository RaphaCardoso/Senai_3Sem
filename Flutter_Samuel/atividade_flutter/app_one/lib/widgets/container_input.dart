import 'package:flutter/material.dart';

class WidgetInput extends StatelessWidget {
  const WidgetInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(25),
        width: 500,
        height: 100,
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text(
                'Nome',
                style: TextStyle(),
              )),
        ),
      ),
    );
  }
}
