import 'package:bloc/bloc.dart';
import 'package:point_conter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit():super(CounterInintional());
  int teamAPoint = 0;
  int teamBPoint = 0;

  void teamAIncrement(int buttonNumber)
  {
    teamAPoint +=buttonNumber;
    emit(CounterAIncrementState());
  }
  void teamBIncrement(int buttonNumber)
  {
    teamBPoint +=buttonNumber;
    emit(CounterBIncrementState());
  }

  void resetBottom()
  {
    teamAPoint=0;
    teamBPoint=0;
   emit(CounterResetState());
  }

}