import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_app/blocs/counter/counter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    log('BUILDDD');
    return Scaffold(
        body: Center(
          child: Builder(builder: (context) {
            final count = context.watch<CounterBloc>().state;
            return BlocSelector<CounterBloc, int, int>(
                selector: (state) => state,
                builder: (_, countSelect) {
                  return Text(
                    countSelect.toString(),
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  );
                });
          }),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              heroTag: '0',
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(CounterEvent.increment);
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              heroTag: '1',
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(CounterEvent.decrement);
              },
              child: const Icon(Icons.remove),
            )
          ],
        ));
  }
}
