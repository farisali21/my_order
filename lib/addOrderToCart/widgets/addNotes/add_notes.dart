import 'package:flutter/material.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add Notes...',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'write any special thing you want to do.',
                  border: InputBorder.none,
                ),
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 15.0,
                  height: 2.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
