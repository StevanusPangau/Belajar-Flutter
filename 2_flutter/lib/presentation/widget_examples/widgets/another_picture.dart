import 'package:flutter/material.dart';

class AnotherPicture extends StatelessWidget {
  const AnotherPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: NetworkImage("https://picsum.photos/200"),
      ),
    );
  }
}
