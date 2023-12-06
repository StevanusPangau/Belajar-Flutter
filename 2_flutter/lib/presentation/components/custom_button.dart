import 'package:flutter/material.dart';

// ? CustomButton juga bisa dinamakan Primary Button, Secondary Button, dll.

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color iconColor;
  // ? jika ingin menambahkan parameter lain, maka tambahkan disini
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      // ? Ink ini untuk memberikan efek splash color pada saat button ditekan
      child: Ink(
        width: 50,
        height: 50,
        // ? decoration ini untuk memberikan efek gradient pada button atau mengubah bentuk button, dll.
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.yellow,
                  Colors.green,
                ])),
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.red,
          customBorder: const CircleBorder(),
          child: Center(
              child: Icon(
            icon,
            color: iconColor,
          )),
        ),
      ),
    );
  }
}

class CustomButtonGesture extends StatelessWidget {
  final Function() onTap;
  final String text;
  const CustomButtonGesture(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.orange,
                  Colors.lightBlue,
                ])),
        child: Center(child: Text(text)),
      ),
    );
  }
}

// ! NOTE: Function gesture jika ingin membuat fungsi yang lebih kompleks sedangkan ink jika ingin menambahkan animasi sederhana
