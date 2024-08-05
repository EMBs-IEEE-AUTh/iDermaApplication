import 'package:flutter/material.dart';


//Ιωάννα

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.15,
      height: 32,
      child: Row(
        children: [
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: Container(
              width: 19,
              height: 19,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: isChecked
                    ? Color.fromRGBO(44, 61, 143, 1.0)
                    : Color.fromRGBO(205, 222, 255, 1.0),
                border: Border.all(
                  color: isChecked
                      ? Color.fromRGBO(44, 61, 143, 1.0)
                      : Colors.grey,
                ),
              ),
              child: isChecked
                  ? Icon(Icons.check, size: 14, color: Colors.white)
                  : null,
            ),
          ),
          SizedBox(width: 5),
          Text(
            'Accept Terms of Use & Privacy Policy',
            style: TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(44, 61, 143, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
