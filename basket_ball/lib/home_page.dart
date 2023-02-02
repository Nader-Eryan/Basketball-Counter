import 'dart:developer';

import 'package:basket_ball/cubit/counter_cubit.dart';
import 'package:basket_ball/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        builder: ((context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team A',
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).counter1}',
                            style: TextStyle(fontSize: 80),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementCounter1(1);
                              },
                              child: Text('Add one point')),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementCounter1(2);
                              },
                              child: Text('Add two points')),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementCounter1(3);
                              },
                              child: Text('Add three points')),
                        ],
                      ),
                      Container(
                        width: 2,
                        height: 300,
                        color: Colors.green,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).counter2}',
                            style: TextStyle(fontSize: 80),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementCounter2(1);
                              },
                              child: Text('Add one point')),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementCounter2(2);
                              },
                              child: Text('Add two points')),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementCounter2(3);
                              },
                              child: Text('Add three points')),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Reset')),
                ],
              ),
            ),
          );
        }),
        listener: ((context, state) {}));
  }
}
