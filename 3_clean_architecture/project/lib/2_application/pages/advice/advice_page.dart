import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/injection.dart';
import 'package:provider/provider.dart';

import '../../core/services/theme_service.dart';
// import 'bloc/advicer_bloc.dart'; // ! BlocBuilder
import 'cubit/advicer_cubit.dart';
import 'widgets/advice_field.dart';
import 'widgets/custom_button.dart';
import 'widgets/error_message.dart';

class AdvicerPageWrapperProvider extends StatelessWidget {
  const AdvicerPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // create: (context) => AdvicerBloc(), // ! BlocBuilder
      // create: (context) => AdvicerCubit(), // ! CubitBuilder
      create: (context) => sl<AdvicerCubit>(), // ! CubitBuilder
      child: const AdvicerPage(),
    );
  }
}

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Advicer',
          style: themeData.textTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          Switch(
              value: Provider.of<ThemeService>(context).isDarkModeOn,
              onChanged: (_) {
                Provider.of<ThemeService>(context, listen: false).toggleTheme();
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(children: [
          // ! BlocBuilder
          // Expanded(child: Center(child: BlocBuilder<AdvicerBloc, AdvicerState>(
          // ! CubitBuilder
          Expanded(
              child: Center(child: BlocBuilder<AdvicerCubit, AdvicerCubitState>(
            builder: (context, state) {
              if (state is AdvicerInitial) {
                return Text("Your Advice is waiting for you",
                    style: themeData.textTheme.headline1);
              } else if (state is AdvicerStateLoading) {
                return CircularProgressIndicator(
                  color: themeData.colorScheme.secondary,
                );
              } else if (state is AdvicerStateLoaded) {
                return AdviceField(advice: state.advice);
              } else if (state is AdvicerStateError) {
                return ErrorMessage(mesagge: state.message);
              }

              // bisa return empty sizebox agar tidak error
              return const SizedBox();
              // return const ErrorMessage(
              //     mesagge: "Oopsss, something went wrong");
            },
          ))),
          const SizedBox(height: 200, child: Center(child: CustomButton())),
        ]),
      ),
    );
  }
}
