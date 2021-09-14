import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

cuisinesAppBar(context, ontab) => AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 0,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(Icons.close, color: Colors.black),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Center(
        child: Text(
          'Cuisines',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: InkWell(
              onTap: ontab,
              child: Text(
                'Clear all',
                style: TextStyle(color: Colors.pink[500]),
              ),
            ),
          ),
        ),
      ],
    );
