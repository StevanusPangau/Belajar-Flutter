import 'package:flutter/material.dart';

class ButtonExamples extends StatefulWidget {
  const ButtonExamples({super.key});

  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {
  bool switchState = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ? Textbutton tidak harus text, bisa juga icon atau container, dll.
        TextButton(
            // // ? style: ButtonStyle() digunakan untuk mengubah style dari button
            //   style: ButtonStyle(
            //     backgroundColor:
            //         MaterialStateColor.resolveWith((states) => Colors.blue),
            //   ),
            // ? onLongPress dan onPressed sama saja, hanya saja onLongPress akan dijalankan ketika user menahan tombol lebih dari 500ms
            onLongPress: () {
              print('TextButton long pressed');
            },
            onPressed: () {
              print('TextButton pressed');
            },
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'TextButton',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ))),

        IconButton(
            onPressed: () {
              print('IconButton pressed');
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 50,
            )),

        Switch(
            value: switchState,
            onChanged: (value) {
              // ? setState digunakan untuk mengubah state dari widget atau merender ulang widget, hanya saja ini tidak bagus untuk performa
              // ? tapi jika ingin membuat untuk mengubah switch, maka harus menggunakan setState tapi harus dipisahkan widgetnya
              setState(() {
                switchState = value;
                print(value);
              });
            }),

        // ? Bisa juga dibuat dalam bentuk container
        // child: Container(
        //   height: 20,
        //   width: 60,
        //   color: Colors.red,
        // )),
      ],
    );
  }
}
