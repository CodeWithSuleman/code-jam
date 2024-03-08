import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/utils/const_colors.dart';

class PrimaryAppBar extends StatefulWidget implements PreferredSizeWidget {
  

  const PrimaryAppBar({super.key});
  @override
  State<PrimaryAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(140);
}

class _CustomAppBarState extends State<PrimaryAppBar> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Color(ConstantColors.primaryColor),
    borderRadius:const BorderRadius.only(bottomLeft:Radius.circular(35) ,bottomRight:Radius.circular(35),)
      ),
    );}}