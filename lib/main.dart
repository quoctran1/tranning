import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tranning/focus_screen.dart';
import 'package:tranning/overlay/overlay_screen.dart';
import 'package:tranning/test_bloc/bloc_test.dart';
import 'package:tranning/test_bloc/test_event.dart';
import 'package:tranning/test_bloc/test_state.dart';
import 'package:tranning/widget/loading_widget.dart';

void main() {
  runApp(const MyApp(
    title: "1234",
  ));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: FocusScreen(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late BlocTest bloc;
  String data = '';

  @override
  void initState() {
    super.initState();
    bloc = BlocTest();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BlocConsumer(
            bloc: bloc,
            listener: (BuildContext context, Object? state) {
              if (state is LoadedState) {
                data = state.data;
              }
            },
            builder: (BuildContext context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (state is LoadingState)
                    const LoadingWidget(
                      isLoading: true,
                      color: Colors.red,
                      child: SizedBox(),
                    ),
                  TextWidget(
                    data: data,
                  ),
                  ButtonClick(
                    title: 'Button',
                    onTap: () {
                      bloc.add(ChangeDataEvent('qwerty'));
                    },
                  ),
                  ButtonClick(
                    title: 'Loading',
                    onTap: () {
                      bloc.add(ShowLoadingEvent());
                    },
                    backgroundColor: Colors.red,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class ButtonClick extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color backgroundColor;
  final double height, width;

  const ButtonClick({
    Key? key,
    required this.title,
    required this.onTap,
    this.backgroundColor = Colors.yellow,
    this.height = 200,
    this.width = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          // height: 50,
          //   width: 150,
          padding: const EdgeInsets.symmetric(
              vertical: 12, horizontal: 24),
          // margin: const EdgeInsets.symmetric(
          //     vertical: 12, horizontal: 24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: backgroundColor),
          child: Text(title)),
      onTap: () {
        onTap();
      },
    );
  }
}

class TextWidget extends StatelessWidget {
  final String data;

  const TextWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.red),
      child: Text(
        data,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 36,
              color: Colors.white,
              height: 1.2,
            ),
      ),
    );
  }
}
