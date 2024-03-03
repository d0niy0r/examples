import 'package:flutter/material.dart';

class QHomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget  {
  const QHomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 120,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
      ),
      leading: const Icon(Icons.widgets),
      title: const Text("QUIZ APP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 24),),
      centerTitle: true,
      actions: const [
        CircleAvatar(radius: 30),
        SizedBox(width: 20)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
