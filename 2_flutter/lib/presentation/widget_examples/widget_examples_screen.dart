import 'package:basics/08_widget_layout-builder.dart';
import 'package:basics/presentation/components/custom_button.dart';
import 'package:basics/presentation/widget_examples/widgets/another_picture.dart';
import 'package:basics/presentation/widget_examples/widgets/button_examples.dart';
import 'package:basics/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:basics/presentation/widget_examples/widgets/hello_world.dart';
import 'package:basics/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:basics/presentation/widget_examples/widgets/person.dart';
import 'package:basics/presentation/widget_examples/widgets/row_expanded_example.dart';
import 'package:basics/presentation/widget_examples/widgets/stevanus_picture.dart';
import 'package:flutter/material.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Basics'),
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const RowExpandedExample(),
                  const SizedBox(
                    height: 20,
                  ),
                  const FirstColumnChild(),
                  const SizedBox(
                    height: 20,
                  ),
                  const HelloWorld(),
                  const SizedBox(
                    height: 20,
                  ),
                  // const StevanusPicture(),
                  const Person(
                      pictureUrl:
                          "https://media.licdn.com/dms/image/C5603AQHZpsvZV9mynA/profile-displayphoto-shrink_800_800/0/1634817830127?e=1707350400&v=beta&t=KS8qOqOQ0l9h8cz41IUzZcuqAmVq3zGrD2CSNGbqSIY",
                      name: "Evan",
                      age: "21",
                      country: "Indonesia",
                      job: "Software Engineer"),
                  const SizedBox(
                    height: 20,
                  ),
                  const AnotherPicture(),
                  const SizedBox(height: 40),
                  const MediaQueryExample(),
                  const SizedBox(height: 40),
                  const LayoutBuilderExample(),
                  const SizedBox(height: 40),
                  const ButtonExamples(),
                  const SizedBox(height: 40),
                  CustomButton(
                    onTap: () {
                      print('Tapped');
                    },
                    icon: Icons.home,
                    iconColor: Colors.white,
                  ),
                  const SizedBox(height: 40),
                  CustomButton(
                    onTap: () {
                      print('Tapped Button 2');
                    },
                    icon: Icons.play_arrow,
                    iconColor: Colors.blue,
                  ),
                  const SizedBox(height: 40),
                  CustomButtonGesture(
                      onTap: () {
                        print('Tapped Button Gesture');
                      },
                      text: "gesture button")
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('FAB clicked');
          },
          child: const Icon(Icons.ac_unit),
        ));
  }
}
