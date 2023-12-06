import 'package:basics/08_widget_layout-builder.dart';
import 'package:basics/presentation/widget_examples/widgets/another_picture.dart';
import 'package:basics/presentation/widget_examples/widgets/button_examples.dart';
import 'package:basics/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:basics/presentation/widget_examples/widgets/hello_world.dart';
import 'package:basics/presentation/widget_examples/widgets/layout_builder_example.dart';
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
          child: const SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  RowExpandedExample(),
                  SizedBox(
                    height: 20,
                  ),
                  FirstColumnChild(),
                  SizedBox(
                    height: 20,
                  ),
                  HelloWorld(),
                  SizedBox(
                    height: 20,
                  ),
                  StevanusPicture(),
                  SizedBox(
                    height: 20,
                  ),
                  AnotherPicture(),
                  SizedBox(height: 40),
                  MediaQueryExample(),
                  SizedBox(height: 40),
                  LayoutBuilderExample(),
                  SizedBox(height: 40),
                  ButtonExamples(),
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
