import 'package:flutter/material.dart';

class StevanusPicture extends StatelessWidget {
  const StevanusPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              "assets/foto.jpg",
              fit: BoxFit.cover,
            )),
        const Positioned(top: 80, left: 10, child: Text("Stevanus "))
      ],
    );
  }
}
