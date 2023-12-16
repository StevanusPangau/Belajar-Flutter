import 'package:basics/08_widget_layout-builder.dart';
import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/components/custom_button.dart';
import 'package:basics/presentation/widget_examples/widgets/another_picture.dart';
import 'package:basics/presentation/widget_examples/widgets/button_examples.dart';
import 'package:basics/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:basics/presentation/widget_examples/widgets/hello_world.dart';
import 'package:basics/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:basics/presentation/widget_examples/widgets/person.dart';
import 'package:basics/presentation/widget_examples/widgets/row_expanded_example.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Basics'),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
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
                        "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg",
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
                    Navigator.pushNamed(context, '/screenOne');
                  },
                  icon: Icons.play_arrow,
                  iconColor: Colors.blue,
                ),
                const SizedBox(height: 40),
                CustomButtonGesture(
                    onTap: () {
                      Navigator.pushNamed(context, '/screenTwo');
                    },
                    text: "gesture button")
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // debugPrint('FAB clicked');

            // ? mengubah tema menggunakan provider
            Provider.of<ThemeService>(context, listen: false).toggleTheme();
          },
          child: const Icon(Icons.ac_unit),
        ));
  }
}
