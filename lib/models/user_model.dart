import 'dart:ui';

class User{
final String name;
final Image image;
final String description;

  User({required this.name, required this.image, required this.description});


Map<String,dynamic> toJson()=>{
  'name':name,
  'image':image,
  'description':description
};

factory User.fromJson(Map<String,dynamic> json){
  return User(
    name: json["name"],
     image: json["image"], 
     description: json["description"]);
}

}
