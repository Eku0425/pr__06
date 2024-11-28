import 'package:flutter/material.dart';

class Planet {
  String name;
  String lengthOfYear;
  String temperature;
  String gravity;
  String velocity;
  String distance;
  String description;
  String image;
  String hero;
  bool liked;

  Planet({
    required this.name,
    required this.lengthOfYear,
    required this.temperature,
    required this.gravity,
    required this.velocity,
    required this.distance,
    required this.description,
    required this.image,
    required this.hero,
    this.liked = false,
  });

  factory Planet.fromJson(Map<String, dynamic> json) {
    return Planet(
      name: json['name'] ?? '',
      lengthOfYear: json['lengthOfYear'] ?? '',
      temperature: json['temperature'] ?? '',
      gravity: json['gravity'] ?? '',
      velocity: json['velocity'] ?? '',
      distance: json['distance'] ?? '',
      description: json['description'] ?? '',
      image: json['image'] ?? '',
      hero: json['hero'] ?? '',
      liked: json['liked'] ?? false,
    );
  }

  void toggleLiked() {
    liked = !liked;
  }
}
