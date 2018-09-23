// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:task_03_category_route/category.dart';

// TODO: Check if we need to import anything

// TODO: Define any constants

/// Category Route (screen).
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
final _backgroundColor = Colors.orangeAccent[100];

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Velociy',
    'Acceleration',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
    Colors.amber,
    Colors.deepOrangeAccent,
  ];

  static const _categoryIcons = <IconData>[
    Icons.compare_arrows,
    Icons.photo_size_select_large,
    Icons.markunread_mailbox,
    Icons.line_weight,
    Icons.cake,
    Icons.directions_bike,
    Icons.directions_car,
    Icons.map,
    Icons.add_a_photo,
    Icons.markunread,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    final categories = <Category>[];
    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(
          Category(
              name: _categoryNames[i],
              color: _baseColors[i],
              iconLocation: _categoryIcons[i])
      );
    }

    final listView = Container(
        color: _backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: buildListView(categories));

    final appBar = AppBar(
      title: Text(
        'Unit Converter',
        style: TextStyle(fontSize: 30.0, color: Colors.black),
      ),
      elevation: 0.0,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }

  ListView buildListView(List<Category> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }
}
