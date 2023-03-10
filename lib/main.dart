
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:point_conter/cubit/counter_cubit.dart';
import 'package:point_conter/cubit/counter_state.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
        builder: (context,state)
        {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text('Point Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                            style: TextStyle(
                              fontSize: 90,
                              color: Colors.black,
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange
                              ),
                              onPressed: ()
                              {
                                BlocProvider.of<CounterCubit>(context).teamAIncrement(1);
                              },
                              child: Text('Add Point 1 ')),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange
                              ),
                              onPressed: ()
                              {
                                BlocProvider.of<CounterCubit>(context).teamAIncrement(2);
                              },
                               child: Text('Add Point 2 ')),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange
                              ),
                              onPressed: ()
                              {
                                BlocProvider.of<CounterCubit>(context).teamAIncrement(3);
                              }, child: Text('Add Point 3 ')),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                            style: TextStyle(
                              fontSize: 90,
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange
                              ),
                              onPressed: ()
                              {
                                BlocProvider.of<CounterCubit>(context).teamBIncrement(1);
                              }, child: Text('Add Point 1')),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange
                              ),
                              onPressed: ()
                              {
                                BlocProvider.of<CounterCubit>(context).teamBIncrement(2);
                              }, child: Text('Add Point 2')),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange
                              ),
                              onPressed: ()
                              {
                                BlocProvider.of<CounterCubit>(context).teamBIncrement(3);
                              }, child: Text('Add Point 3')),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange
                    ),
                    onPressed: ()
                    {
                      BlocProvider.of<CounterCubit>(context).resetBottom();
                    }, child: Text('reset')),
              ],
            ),
          );
        },
        listener: (context,state)
        {

        }
    );
  }
}
