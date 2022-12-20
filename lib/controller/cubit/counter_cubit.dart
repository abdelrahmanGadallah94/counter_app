import 'package:bloc/bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterBIncrementState());
  int teamA = 0;
  int teamB = 0;
  void incrementCounter({required String team,required int buttonNumber}){

    if(team == "A"){
      teamA += buttonNumber;
      // update ui
      emit(CounterAIncrementState());
    }else{
      teamB += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void resetState(){
    teamA = 0;
    teamB = 0;
    emit(ResetCounterState());
  }

  // void incrementBCounter({required int buttonNumber}){
  //   teamB += buttonNumber;
  //   emit(CounterBIncrementState());
  // }

}