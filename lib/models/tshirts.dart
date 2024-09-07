import 'package:flutter/material.dart';

class CollectionModel extends ChangeNotifier {
  final List _shopItems = [
    [
// [description ,name,material,size,image,Pathprice,color]
      [
        "you can kill anyone without bein seen",
        "Death",
        "Cotton",
        "xl",
        "assets/images/alexander-grey-LV7lkepljdM-unsplash.jpg",
        "20",
      ],
      [
        "you can kill anyone without bein seen",
        "Pull",
        "Cotton",
        "L",
        "assets/images/camilla-carvalho-xuF9XFP-vNs-unsplash.jpg",
        "20",
      ],
      [
        "you can kill anyone without bein seen",
        "Death",
        "Cotton",
        "xl",
        "assets/images/velizar-ivanov-9bFLTsaP_xo-unsplash.jpg",
        "20",
      ],
    ]
  ];

  get shopItems => shopItems;
}
