import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:project/2_application/pages/advice/bloc/advicer_bloc.dart'; // ! BlocBuilder
import 'package:project/2_application/pages/advice/cubit/advicer_cubit.dart'; // ! CubitBuilder

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkResponse(
      onTap: () =>
          // ! BlocBuilder
          // BlocProvider.of<AdvicerBloc>(context).add(AdviceRequestEvent()),
          // ! CubitBuilder
          BlocProvider.of<AdvicerCubit>(context).adviceRequested(),
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: themeData.colorScheme.secondary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              "Get Advice",
              style: themeData.textTheme.headline1,
            ),
          ),
        ),
      ),
    );
  }
}
