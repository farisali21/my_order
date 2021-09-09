import 'package:flutter/material.dart';

class PopularBrandsItem extends StatelessWidget {
  final imageUrl;
  final title;
  const PopularBrandsItem(this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 8,
            child: Image(
              image: AssetImage(imageUrl),
              fit: BoxFit.fill,
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
