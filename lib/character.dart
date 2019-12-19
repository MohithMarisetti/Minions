import 'package:flutter/material.dart';

class Character {
  Character(
      {this.name,
      this.imagePath,
      this.colors,
      this.description,
      this.clipImages});
  final String imagePath;
  final String name;
  final String description;
  final List<Color> colors;
  final List<String> clipImages;
}
