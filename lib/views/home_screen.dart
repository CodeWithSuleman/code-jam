import 'package:flutter/material.dart';
import 'package:practice/views/detail_box_screen.dart';
import 'package:practice/widgets/primary_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(),
          floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (ctx)=>const UserDetailBox());
      },
      child: Icon(Icons.add),
      ),

          );
          
  }
}