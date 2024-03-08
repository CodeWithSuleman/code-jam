import 'package:flutter/material.dart';

class UserDetailBox extends StatefulWidget {
  const UserDetailBox({Key, key}) : super(key: key);

  @override
  _UserDetailBoxState createState() => _UserDetailBoxState();
}

class _UserDetailBoxState extends State<UserDetailBox> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return  SingleChildScrollView(
      child: Column(
        children: [
          AlertDialog(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Fill the Fields"),
                  SizedBox(height: deviceHeight*0.02),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                      labelText: "Enter Your Name",
                      hintText: "Enter Your Name",
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                      labelText: "Description",
                      hintText: "Description",
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                  TextFormField(
                    controller: imageController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                      labelText: "Enter Your Image",
                      hintText: "Enter Your Image",
                    ),
                  ),
                ],
              ),
              actions: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Add"),
                    ),
                  ],
                ),
              ],
            
          ),
        ],
      ),
    );
  }
}
