class Restaurant {
  final String name;
  final String time;
  final String image;

  Restaurant({
    required this.name,
    required this.time,
    required this.image,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      name: json["name"],
      time: json["time"],
      image: json["image"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "time": this.time,
      "image": this.image,
    };
  }
//
}

List<Restaurant> demoRestaurant = [
  Restaurant(
      name: 'Vegan Resto', time: '12 min', image: 'images/Resturant Image.png'),
  Restaurant(name: 'Healthy Food', time: '8 min', image: 'images/healthy.png'),
  Restaurant(
      name: 'Good Food', time: '12 min', image: 'images/Restaurant Image.png'),
  Restaurant(
      name: 'Smart Resto',
      time: '8 min',
      image: 'images/Restaurant Image22.png'),
  Restaurant(name: 'Vegan Resto', time: '12 min', image: 'images/heee.png'),
  Restaurant(name: 'Vegan Resto', time: '12 min', image: 'images/ve.png'),
];
