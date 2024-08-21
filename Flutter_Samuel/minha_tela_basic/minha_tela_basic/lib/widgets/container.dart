import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 100,
      padding: EdgeInsets.only(top: 4),
      margin: EdgeInsets.only(left: 300, bottom: 15, top: 15),
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(
          color: const Color.fromARGB(43, 0, 0, 0),
          width: 2,
          style: BorderStyle.solid,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "./assets/images/tomatoes.png",
                scale: 8,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 2),
                    child: Text(
                      'Bell Pepper Red',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 2),
                      child: Text(
                        '1Kg, Price',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(3),
                    child: Icon(
                      Icons.remove_circle_outline_outlined,
                      size: 35,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(3),
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(3),
                    child: Icon(
                      Icons.add_circle_outline_outlined,
                      size: 35,
                      color: const Color.fromARGB(255, 114, 221, 81),
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.close,
                size: 30,
              ),
              Text(
                '\$4,55',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
